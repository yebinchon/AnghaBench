
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RecvQueue; int SendQueue; } ;
typedef int PKT ;
typedef TYPE_1__ NATIVE_NAT ;
typedef int BLOCK ;


 int FreeBlock (int *) ;
 int FreePacketWithData (int *) ;
 void* GetNext (int ) ;
 int LockQueue (int ) ;
 int UnlockQueue (int ) ;

void NnClearQueue(NATIVE_NAT *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 LockQueue(t->SendQueue);
 {
  while (1)
  {
   BLOCK *b = GetNext(t->SendQueue);

   if (b == ((void*)0))
   {
    break;
   }

   FreeBlock(b);
  }
 }
 UnlockQueue(t->SendQueue);

 LockQueue(t->RecvQueue);
 {
  while (1)
  {
   PKT *p = GetNext(t->RecvQueue);

   if (p == ((void*)0))
   {
    break;
   }

   FreePacketWithData(p);
  }
 }
 UnlockQueue(t->RecvQueue);
}
