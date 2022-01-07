
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {scalar_t__ num_item; } ;
struct TYPE_11__ {TYPE_3__* SendQueue; } ;
struct TYPE_10__ {scalar_t__ PacketSize; void* PacketData; } ;
typedef TYPE_1__ PKT ;
typedef TYPE_2__ L3IF ;


 int Free (TYPE_1__*) ;
 TYPE_1__* GetNext (TYPE_3__*) ;
 int L3Polling (TYPE_2__*) ;
 int LockQueue (TYPE_3__*) ;
 int UnlockQueue (TYPE_3__*) ;

UINT L3GetNextPacket(L3IF *f, void **data)
{
 UINT ret = 0;

 if (f == ((void*)0) || data == ((void*)0))
 {
  return 0;
 }

START:

 LockQueue(f->SendQueue);
 {
  PKT *p = GetNext(f->SendQueue);

  if (p != ((void*)0))
  {

   ret = p->PacketSize;
   *data = p->PacketData;

   Free(p);
  }
 }
 UnlockQueue(f->SendQueue);

 if (ret == 0)
 {

  L3Polling(f);


  if (f->SendQueue->num_item != 0)
  {

   goto START;
  }
 }

 return ret;
}
