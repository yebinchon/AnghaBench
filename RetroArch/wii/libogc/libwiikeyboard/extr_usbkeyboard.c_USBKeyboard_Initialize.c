
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int HEAP_SIZE ;
 int IPC_ENOHEAP ;
 int IPC_OK ;
 scalar_t__ hId ;
 scalar_t__ iosCreateHeap (int ) ;

s32 USBKeyboard_Initialize(void)
{
 if (hId > 0)
  return 0;

 hId = iosCreateHeap(HEAP_SIZE);

 if (hId < 0)
  return IPC_ENOHEAP;

 return IPC_OK;
}
