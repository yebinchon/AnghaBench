
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct cs_hash {size_t cs_size; } ;
typedef int scatter ;
struct TYPE_5__ {scalar_t__ pageSize; size_t hashSize; scalar_t__ teamOffset; scalar_t__ version; scalar_t__ identOffset; scalar_t__ nCodeSlots; scalar_t__ scatterOffset; scalar_t__ hashOffset; scalar_t__ nSpecialSlots; int hashType; scalar_t__ magic; } ;
struct TYPE_4__ {scalar_t__ count; } ;
typedef TYPE_1__ SC_Scatter ;
typedef TYPE_2__ CS_CodeDirectory ;


 size_t CSMAGIC_CODEDIRECTORY ;
 size_t CS_SUPPORTSSCATTER ;
 size_t CS_SUPPORTSTEAMID ;
 int EBADEXEC ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SHIFT_4K ;
 struct cs_hash* cs_find_md (int ) ;
 int * memchr (int const*,int ,size_t) ;
 size_t ntohl (scalar_t__) ;

__attribute__((used)) static int
cs_validate_codedirectory(const CS_CodeDirectory *cd, size_t length)
{
 struct cs_hash const *hashtype;

 if (length < sizeof(*cd))
  return EBADEXEC;
 if (ntohl(cd->magic) != CSMAGIC_CODEDIRECTORY)
  return EBADEXEC;
 if (cd->pageSize < PAGE_SHIFT_4K || cd->pageSize > PAGE_SHIFT)
  return EBADEXEC;
 hashtype = cs_find_md(cd->hashType);
 if (hashtype == ((void*)0))
  return EBADEXEC;

 if (cd->hashSize != hashtype->cs_size)
  return EBADEXEC;

 if (length < ntohl(cd->hashOffset))
  return EBADEXEC;


 if (ntohl(cd->hashOffset) / hashtype->cs_size < ntohl(cd->nSpecialSlots))
  return EBADEXEC;


 if ((length - ntohl(cd->hashOffset)) / hashtype->cs_size < ntohl(cd->nCodeSlots))
  return EBADEXEC;

 if (ntohl(cd->version) >= CS_SUPPORTSSCATTER && cd->scatterOffset) {

  if (length < ntohl(cd->scatterOffset))
   return EBADEXEC;

  const SC_Scatter *scatter = (const SC_Scatter *)
   (((const uint8_t *)cd) + ntohl(cd->scatterOffset));
  uint32_t nPages = 0;






  while(1) {

   if (((const uint8_t *)scatter) + sizeof(scatter[0]) > (const uint8_t *)cd + length)
    return EBADEXEC;
   uint32_t scount = ntohl(scatter->count);
   if (scount == 0)
    break;
   if (nPages + scount < nPages)
    return EBADEXEC;
   nPages += scount;
   scatter++;



  }




 }

 if (length < ntohl(cd->identOffset))
  return EBADEXEC;


 if (cd->identOffset) {
  const uint8_t *ptr = (const uint8_t *)cd + ntohl(cd->identOffset);
  if (memchr(ptr, 0, length - ntohl(cd->identOffset)) == ((void*)0))
   return EBADEXEC;
 }


 if (ntohl(cd->version) >= CS_SUPPORTSTEAMID && ntohl(cd->teamOffset)) {
  if (length < ntohl(cd->teamOffset))
   return EBADEXEC;

  const uint8_t *ptr = (const uint8_t *)cd + ntohl(cd->teamOffset);
  if (memchr(ptr, 0, length - ntohl(cd->teamOffset)) == ((void*)0))
   return EBADEXEC;
 }

 return 0;
}
