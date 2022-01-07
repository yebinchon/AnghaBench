
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VH ;
struct TYPE_3__ {int NatTcpConnectThread; } ;
typedef TYPE_1__ NAT_ENTRY ;


 int NatTcpConnectThread ;
 int NewThread (int ,void*) ;
 int WaitThreadInit (int ) ;

void CreateNatTcpConnectThread(VH *v, NAT_ENTRY *n)
{

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }


 n->NatTcpConnectThread = NewThread(NatTcpConnectThread, (void *)n);


 WaitThreadInit(n->NatTcpConnectThread);
}
