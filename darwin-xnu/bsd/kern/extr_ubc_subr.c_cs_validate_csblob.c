
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_13__ {int type; int offset; } ;
struct TYPE_12__ {int hashType; int flags; } ;
struct TYPE_11__ {int length; int magic; } ;
struct TYPE_10__ {int count; TYPE_4__* index; } ;
typedef TYPE_1__ CS_SuperBlob ;
typedef TYPE_2__ CS_GenericBlob ;
typedef TYPE_3__ CS_CodeDirectory ;
typedef TYPE_4__ CS_BlobIndex ;


 size_t CSMAGIC_CODEDIRECTORY ;
 size_t CSMAGIC_EMBEDDED_ENTITLEMENTS ;
 size_t CSMAGIC_EMBEDDED_SIGNATURE ;
 size_t CSSLOT_ALTERNATE_CODEDIRECTORIES ;
 size_t CSSLOT_ALTERNATE_CODEDIRECTORY_LIMIT ;
 size_t CSSLOT_CODEDIRECTORY ;
 size_t CSSLOT_ENTITLEMENTS ;
 size_t CS_ADHOC ;
 scalar_t__ CS_HASHTYPE_SHA1 ;
 int EBADEXEC ;
 int cs_debug ;
 int cs_validate_blob (TYPE_2__ const*,size_t) ;
 int cs_validate_codedirectory (TYPE_3__ const*,size_t) ;
 unsigned int hash_rank (TYPE_3__ const*) ;
 size_t ntohl (int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
cs_validate_csblob(
 const uint8_t *addr,
 const size_t blob_size,
 const CS_CodeDirectory **rcd,
 const CS_GenericBlob **rentitlements)
{
 const CS_GenericBlob *blob;
 int error;
 size_t length;

 *rcd = ((void*)0);
 *rentitlements = ((void*)0);

 blob = (const CS_GenericBlob *)(const void *)addr;

 length = blob_size;
 error = cs_validate_blob(blob, length);
 if (error)
  return error;
 length = ntohl(blob->length);

 if (ntohl(blob->magic) == CSMAGIC_EMBEDDED_SIGNATURE) {
  const CS_SuperBlob *sb;
  uint32_t n, count;
  const CS_CodeDirectory *best_cd = ((void*)0);
  unsigned int best_rank = 0;




  if (length < sizeof(CS_SuperBlob))
   return EBADEXEC;

  sb = (const CS_SuperBlob *)blob;
  count = ntohl(sb->count);


  if ((length - sizeof(CS_SuperBlob)) / sizeof(CS_BlobIndex) < count)
   return EBADEXEC;


  for (n = 0; n < count; n++) {
   const CS_BlobIndex *blobIndex = &sb->index[n];
   uint32_t type = ntohl(blobIndex->type);
   uint32_t offset = ntohl(blobIndex->offset);
   if (length < offset)
    return EBADEXEC;

   const CS_GenericBlob *subBlob =
    (const CS_GenericBlob *)(const void *)(addr + offset);

   size_t subLength = length - offset;

   if ((error = cs_validate_blob(subBlob, subLength)) != 0)
    return error;
   subLength = ntohl(subBlob->length);


   if (type == CSSLOT_CODEDIRECTORY || (type >= CSSLOT_ALTERNATE_CODEDIRECTORIES && type < CSSLOT_ALTERNATE_CODEDIRECTORY_LIMIT)) {
    const CS_CodeDirectory *candidate = (const CS_CodeDirectory *)subBlob;
    if ((error = cs_validate_codedirectory(candidate, subLength)) != 0)
     return error;
    unsigned int rank = hash_rank(candidate);
    if (cs_debug > 3)
     printf("CodeDirectory type %d rank %d at slot 0x%x index %d\n", candidate->hashType, (int)rank, (int)type, (int)n);
    if (best_cd == ((void*)0) || rank > best_rank) {
     best_cd = candidate;
     best_rank = rank;

     if (cs_debug > 2)
      printf("using CodeDirectory type %d (rank %d)\n", (int)best_cd->hashType, best_rank);
     *rcd = best_cd;
    } else if (best_cd != ((void*)0) && rank == best_rank) {

     printf("multiple hash=%d CodeDirectories in signature; rejecting\n", best_cd->hashType);
     return EBADEXEC;
    }
   } else if (type == CSSLOT_ENTITLEMENTS) {
    if (ntohl(subBlob->magic) != CSMAGIC_EMBEDDED_ENTITLEMENTS) {
     return EBADEXEC;
    }
    if (*rentitlements != ((void*)0)) {
     printf("multiple entitlements blobs\n");
     return EBADEXEC;
    }
    *rentitlements = subBlob;
   }
  }
 } else if (ntohl(blob->magic) == CSMAGIC_CODEDIRECTORY) {

  if ((error = cs_validate_codedirectory((const CS_CodeDirectory *)(const void *)addr, length)) != 0)
   return error;
  *rcd = (const CS_CodeDirectory *)blob;
 } else {
  return EBADEXEC;
 }

 if (*rcd == ((void*)0))
  return EBADEXEC;

 return 0;
}
