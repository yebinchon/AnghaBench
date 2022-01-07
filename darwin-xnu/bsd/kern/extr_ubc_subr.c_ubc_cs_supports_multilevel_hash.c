
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct cs_blob {int csb_hash_pageshift; TYPE_2__* csb_cd; int * csb_teamid; int csb_platform_binary; } ;
typedef int boolean_t ;
struct TYPE_4__ {int codeLimit; int scatterOffset; int version; int nCodeSlots; } ;
struct TYPE_3__ {int count; int base; } ;
typedef TYPE_1__ SC_Scatter ;
typedef TYPE_2__ CS_CodeDirectory ;


 int CS_SUPPORTSSCATTER ;
 int FALSE ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int TRUE ;
 int ntohl (int ) ;

__attribute__((used)) static boolean_t
ubc_cs_supports_multilevel_hash(struct cs_blob *blob)
{
 const CS_CodeDirectory *cd;






 if (!blob->csb_platform_binary || blob->csb_teamid != ((void*)0)) {
  return FALSE;
 }





 if (PAGE_SHIFT <= blob->csb_hash_pageshift) {
  return FALSE;
 }

 cd = blob->csb_cd;




 if (ntohl(cd->nCodeSlots) & (PAGE_MASK >> blob->csb_hash_pageshift)) {
  return FALSE;
 }




 if ((ntohl(cd->version) >= CS_SUPPORTSSCATTER) && (ntohl(cd->scatterOffset))) {

  const SC_Scatter *scatter = (const SC_Scatter*)
   ((const char*)cd + ntohl(cd->scatterOffset));

  do {
   uint32_t sbase = ntohl(scatter->base);
   uint32_t scount = ntohl(scatter->count);


   if (scount == 0) {
    break;
   }

   if (sbase & (PAGE_MASK >> blob->csb_hash_pageshift)) {
    return FALSE;
   }

   if (scount & (PAGE_MASK >> blob->csb_hash_pageshift)) {
    return FALSE;
   }

   scatter++;
  } while(1);
 }


 if (ntohl(cd->codeLimit) & PAGE_MASK) {
  return FALSE;
 }


 return TRUE;
}
