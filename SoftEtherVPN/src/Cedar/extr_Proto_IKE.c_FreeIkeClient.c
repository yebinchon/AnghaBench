
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SendID2_Buf; int SendID1_Buf; int * EtherIP; int * L2TP; } ;
typedef int IKE_SERVER ;
typedef TYPE_1__ IKE_CLIENT ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int FreeL2TPServer (int *) ;
 int ReleaseEtherIPServer (int *) ;
 int StopL2TPServer (int *,int) ;

void FreeIkeClient(IKE_SERVER *ike, IKE_CLIENT *c)
{

 if (c == ((void*)0) || ike == ((void*)0))
 {
  return;
 }

 if (c->L2TP != ((void*)0))
 {
  StopL2TPServer(c->L2TP, 1);
  FreeL2TPServer(c->L2TP);
 }

 if (c->EtherIP != ((void*)0))
 {
  ReleaseEtherIPServer(c->EtherIP);
 }

 FreeBuf(c->SendID1_Buf);
 FreeBuf(c->SendID2_Buf);

 Free(c);
}
