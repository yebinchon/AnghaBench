
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int SessionCreated; size_t NumSlot; int IsReadOnly; size_t SessionId; size_t SessionSlotNumber; int Error; int * SlotIdList; TYPE_1__* Api; } ;
struct TYPE_5__ {size_t (* C_OpenSession ) (int ,int,int *,int *,size_t*) ;} ;
typedef TYPE_2__ SECURE ;


 int CKF_RW_SESSION ;
 int CKF_SERIAL_SESSION ;
 size_t CKR_OK ;
 int GetSecInfo (TYPE_2__*) ;
 int SEC_ERROR_INVALID_SLOT_NUMBER ;
 int SEC_ERROR_OPEN_SESSION ;
 int SEC_ERROR_SESSION_EXISTS ;
 size_t stub1 (int ,int,int *,int *,size_t*) ;
 size_t stub2 (int ,int,int *,int *,size_t*) ;

bool OpenSecSession(SECURE *sec, UINT slot_number)
{
 UINT err = 0;
 UINT session;

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (sec->SessionCreated)
 {

  sec->Error = SEC_ERROR_SESSION_EXISTS;
  return 0;
 }
 if (slot_number >= sec->NumSlot)
 {

  sec->Error = SEC_ERROR_INVALID_SLOT_NUMBER;
  return 0;
 }


 if ((err = sec->Api->C_OpenSession(sec->SlotIdList[slot_number],
  CKF_RW_SESSION | CKF_SERIAL_SESSION, ((void*)0), ((void*)0), &session)) != CKR_OK)
 {


  if ((err = sec->Api->C_OpenSession(sec->SlotIdList[slot_number],
   CKF_SERIAL_SESSION, ((void*)0), ((void*)0), &session)) != CKR_OK)
  {

   sec->Error = SEC_ERROR_OPEN_SESSION;
   return 0;
  }
  else
  {
   sec->IsReadOnly = 1;
  }
 }

 sec->SessionCreated = 1;
 sec->SessionId = session;
 sec->SessionSlotNumber = slot_number;


 GetSecInfo(sec);

 return 1;
}
