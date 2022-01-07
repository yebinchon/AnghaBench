
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int IsEPass1000; int NumSlot; scalar_t__* SlotIdList; TYPE_1__* Api; TYPE_2__* Dev; int Error; int lock; } ;
struct TYPE_11__ {int DeviceName; } ;
struct TYPE_10__ {scalar_t__ (* C_GetSlotList ) (int,scalar_t__*,int*) ;} ;
typedef TYPE_2__ SECURE_DEVICE ;
typedef TYPE_3__ SECURE ;


 scalar_t__ CKR_OK ;
 int CloseSec (TYPE_3__*) ;
 int Free (scalar_t__*) ;
 int FreeSecModule (TYPE_3__*) ;
 TYPE_2__* GetSecureDevice (scalar_t__) ;
 scalar_t__ INFINITE ;
 int LoadSecModule (TYPE_3__*) ;
 int NewLock () ;
 int SEC_ERROR_NOERROR ;
 scalar_t__ SearchStrEx (int ,char*,int ,int) ;
 int TRUE ;
 TYPE_3__* ZeroMalloc (int) ;
 scalar_t__ stub1 (int,scalar_t__*,int*) ;
 scalar_t__ stub2 (int,scalar_t__*,int*) ;

SECURE *OpenSec(UINT id)
{
 SECURE_DEVICE *dev = GetSecureDevice(id);
 SECURE *sec;
 UINT err;

 if (dev == ((void*)0))
 {
  return ((void*)0);
 }

 sec = ZeroMalloc(sizeof(SECURE));

 sec->lock = NewLock();
 sec->Error = SEC_ERROR_NOERROR;
 sec->Dev = dev;


 if (SearchStrEx(dev->DeviceName, "epass", 0, 0) != INFINITE)
 {
  sec->IsEPass1000 = 1;
 }


 if (LoadSecModule(sec) == 0)
 {
  CloseSec(sec);
  return ((void*)0);
 }


 sec->NumSlot = 0;
 if ((err = sec->Api->C_GetSlotList(1, ((void*)0), &sec->NumSlot)) != CKR_OK || sec->NumSlot == 0)
 {

  FreeSecModule(sec);
  CloseSec(sec);
  return ((void*)0);
 }

 sec->SlotIdList = (UINT *)ZeroMalloc(sizeof(UINT) * sec->NumSlot);

 if (sec->Api->C_GetSlotList(TRUE, sec->SlotIdList, &sec->NumSlot) != CKR_OK)
 {

  Free(sec->SlotIdList);
  sec->SlotIdList = ((void*)0);
  FreeSecModule(sec);
  CloseSec(sec);
  return ((void*)0);
 }

 return sec;
}
