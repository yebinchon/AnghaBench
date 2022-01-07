
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int NatTable; } ;
typedef TYPE_1__ VH ;
struct TYPE_8__ {int lock; int * Sock; struct TYPE_8__* IcmpOriginalCopy; int * IcmpResponseBlock; int * IcmpQueryBlock; int UdpSendQueue; int UdpRecvQueue; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int BLOCK ;


 int Debug (char*) ;
 int Delete (int ,TYPE_2__*) ;
 int DeleteLock (int ) ;
 int Disconnect (int *) ;
 int Free (TYPE_2__*) ;
 int FreeBlock (int *) ;
 int * GetNext (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSock (int *) ;

void DeleteNatIcmp(VH *v, NAT_ENTRY *n)
{
 BLOCK *block;

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }




 while (block = GetNext(n->UdpRecvQueue))
 {
  FreeBlock(block);
 }
 ReleaseQueue(n->UdpRecvQueue);
 while (block = GetNext(n->UdpSendQueue))
 {
  FreeBlock(block);
 }
 ReleaseQueue(n->UdpSendQueue);

 if (n->IcmpQueryBlock != ((void*)0))
 {
  FreeBlock(n->IcmpQueryBlock);
 }

 if (n->IcmpResponseBlock != ((void*)0))
 {
  FreeBlock(n->IcmpResponseBlock);
 }

 if (n->IcmpOriginalCopy != ((void*)0))
 {
  Free(n->IcmpOriginalCopy);
 }


 if (n->Sock != ((void*)0))
 {
  Disconnect(n->Sock);
  ReleaseSock(n->Sock);
  n->Sock = ((void*)0);
 }

 DeleteLock(n->lock);


 Delete(v->NatTable, n);


 Free(n);

 Debug("NAT: DeleteNatIcmp\n");

}
