
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int NatTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {int NatTcpCancelFlag; int lock; int * RecvFifo; int * SendFifo; int * TcpRecvList; int * TcpRecvWindow; int * Sock; int * NatTcpConnectThread; int Id; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef TYPE_2__ IP_PART ;


 int Debug (char*) ;
 int Delete (int ,TYPE_2__*) ;
 int DeleteLock (int ) ;
 int Disconnect (int *) ;
 int Free (TYPE_2__*) ;
 int INFINITE ;
 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int NLog (TYPE_1__*,char*,int ) ;
 int ReleaseFifo (int *) ;
 int ReleaseList (int *) ;
 int ReleaseSock (int *) ;
 int ReleaseThread (int *) ;
 int WaitThread (int *,int ) ;

void DeleteNatTcp(VH *v, NAT_ENTRY *n)
{

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }

 NLog(v, "LH_NAT_TCP_DELETED", n->Id);


 if (n->NatTcpConnectThread != ((void*)0))
 {
  n->NatTcpCancelFlag = 1;

  WaitThread(n->NatTcpConnectThread, INFINITE);
  ReleaseThread(n->NatTcpConnectThread);
  n->NatTcpConnectThread = ((void*)0);
 }
 if (n->Sock != ((void*)0))
 {

  Disconnect(n->Sock);
  ReleaseSock(n->Sock);
  n->Sock = ((void*)0);
 }


 if (n->TcpRecvWindow != ((void*)0))
 {
  ReleaseFifo(n->TcpRecvWindow);
  n->TcpRecvWindow = ((void*)0);
 }


 if (n->TcpRecvList != ((void*)0))
 {
  UINT i;
  for (i = 0;i < LIST_NUM(n->TcpRecvList);i++)
  {
   IP_PART *p = LIST_DATA(n->TcpRecvList, i);
   Free(p);
  }
  ReleaseList(n->TcpRecvList);
  n->TcpRecvList = ((void*)0);
 }


 ReleaseFifo(n->SendFifo);
 ReleaseFifo(n->RecvFifo);


 Delete(v->NatTable, n);

 DeleteLock(n->lock);


 Free(n);

 Debug("NAT_ENTRY: DeleteNatTcp\n");
}
