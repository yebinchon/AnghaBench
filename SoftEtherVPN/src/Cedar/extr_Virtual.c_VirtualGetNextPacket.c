
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* SendQueue; int Now; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {scalar_t__ num_item; } ;
struct TYPE_13__ {scalar_t__ Size; void* Buf; } ;
typedef TYPE_2__ BLOCK ;


 int Free (TYPE_2__*) ;
 TYPE_2__* GetNext (TYPE_6__*) ;
 int LockQueue (TYPE_6__*) ;
 int LockVirtual (TYPE_1__*) ;
 int Tick64 () ;
 int UnlockQueue (TYPE_6__*) ;
 int UnlockVirtual (TYPE_1__*) ;
 int VirtualPolling (TYPE_1__*) ;

UINT VirtualGetNextPacket(VH *v, void **data)
{
 UINT ret = 0;

START:

 LockQueue(v->SendQueue);
 {
  BLOCK *block = GetNext(v->SendQueue);

  if (block != ((void*)0))
  {

   ret = block->Size;
   *data = block->Buf;

   Free(block);
  }
 }
 UnlockQueue(v->SendQueue);

 if (ret == 0)
 {
  LockVirtual(v);
  {
   v->Now = Tick64();

   VirtualPolling(v);
  }
  UnlockVirtual(v);
  if (v->SendQueue->num_item != 0)
  {
   goto START;
  }
 }

 return ret;
}
