
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ version; } ;
typedef int Result ;
typedef TYPE_1__ AM_TitleEntry ;


 int AM_GetTitleCount (int ,int*) ;
 int AM_GetTitleInfo (int ,int,scalar_t__*,TYPE_1__*) ;
 int AM_GetTitleList (int*,int ,int,scalar_t__*) ;
 int MEDIATYPE_SD ;
 scalar_t__ R_FAILED (int ) ;
 int free (scalar_t__*) ;
 scalar_t__* malloc (int) ;

__attribute__((used)) static int isCiaInstalled(u64 titleId, u16 version){
 u32 titlesToRetrieve;
 u32 titlesRetrieved;
 u64* titleIds;
 bool titleExists = 0;
 AM_TitleEntry titleInfo;
 Result failed;

 failed = AM_GetTitleCount(MEDIATYPE_SD, &titlesToRetrieve);
 if(R_FAILED(failed))
  return -1;

 titleIds = malloc(titlesToRetrieve * sizeof(uint64_t));
 if(titleIds == ((void*)0))
  return -1;

 failed = AM_GetTitleList(&titlesRetrieved, MEDIATYPE_SD, titlesToRetrieve, titleIds);
 if(R_FAILED(failed))
  return -1;

 for(u32 titlesToCheck = 0; titlesToCheck < titlesRetrieved; titlesToCheck++){
  if(titleIds[titlesToCheck] == titleId){
   titleExists = 1;
   break;
  }
 }

 free(titleIds);

 if(titleExists){
  failed = AM_GetTitleInfo(MEDIATYPE_SD, 1 , &titleId, &titleInfo);
  if(R_FAILED(failed))
   return -1;

  if(titleInfo.version == version)
   return 1;
 }

 return 0;
}
