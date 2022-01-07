
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int NatTable; } ;
typedef TYPE_1__ VH ;
struct TYPE_9__ {int lock; int * Sock; int UdpSendQueue; int UdpRecvQueue; int Id; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int BLOCK ;


 int Debug (char*) ;
 int Delete (int ,TYPE_2__*) ;
 int DeleteLock (int ) ;
 int Disconnect (int *) ;
 int Free (TYPE_2__*) ;
 int FreeBlock (int *) ;
 int * GetNext (int ) ;
 int NLog (TYPE_1__*,char*,int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSock (int *) ;

void DeleteNatUdp(VH *v, NAT_ENTRY *n)
{
 BLOCK *block;

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }

 NLog(v, "LH_NAT_UDP_DELETED", n->Id);


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


 if (n->Sock != ((void*)0))
 {
  Disconnect(n->Sock);
  ReleaseSock(n->Sock);
  n->Sock = ((void*)0);
 }

 DeleteLock(n->lock);


 Delete(v->NatTable, n);


 Free(n);

 Debug("NAT: DeleteNatUdp\n");

}
