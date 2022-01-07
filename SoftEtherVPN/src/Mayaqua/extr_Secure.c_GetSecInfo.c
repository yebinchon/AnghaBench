
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int token_info ;
struct TYPE_5__ {size_t SessionSlotNumber; int * Info; int * SlotIdList; TYPE_1__* Api; } ;
struct TYPE_4__ {scalar_t__ (* C_GetTokenInfo ) (int ,int *) ;} ;
typedef TYPE_2__ SECURE ;
typedef int CK_TOKEN_INFO ;


 scalar_t__ CKR_OK ;
 int * TokenInfoToSecInfo (int *) ;
 int Zero (int *,int) ;
 scalar_t__ stub1 (int ,int *) ;

void GetSecInfo(SECURE *sec)
{
 CK_TOKEN_INFO token_info;

 if (sec == ((void*)0))
 {
  return;
 }
 if (sec->Info != ((void*)0))
 {
  return;
 }


 Zero(&token_info, sizeof(token_info));
 if (sec->Api->C_GetTokenInfo(sec->SlotIdList[sec->SessionSlotNumber], &token_info) != CKR_OK)
 {

  return;
 }

 sec->Info = TokenInfoToSecInfo(&token_info);
}
