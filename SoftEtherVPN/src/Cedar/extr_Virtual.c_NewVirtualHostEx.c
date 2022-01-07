
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VH_OPTION ;
struct TYPE_8__ {int IcmpRawSocketOk; int IcmpApiOk; int * nat; int Counter; int lock; int ref; } ;
typedef TYPE_1__ VH ;
struct TYPE_9__ {scalar_t__ IsTtlSupported; } ;
typedef TYPE_2__ SOCK ;
typedef int NAT ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;
typedef int CEDAR ;


 int IP_PROTO_ICMPV4 ;
 scalar_t__ IsIcmpApiSupported () ;
 int MAKE_SPECIAL_PORT (int ) ;
 int NewCounter () ;
 int NewLock () ;
 int NewRef () ;
 TYPE_2__* NewUDP4 (int ,int *) ;
 int ReleaseSock (TYPE_2__*) ;
 int SetVirtualHostOption (TYPE_1__*,int *) ;
 TYPE_1__* ZeroMalloc (int) ;

VH *NewVirtualHostEx(CEDAR *cedar, CLIENT_OPTION *option, CLIENT_AUTH *auth, VH_OPTION *vh_option, NAT *nat)
{
 VH *v;
 SOCK *s;

 if (vh_option == ((void*)0))
 {
  return ((void*)0);
 }


 v = ZeroMalloc(sizeof(VH));
 v->ref = NewRef();
 v->lock = NewLock();
 v->Counter = NewCounter();

 v->nat = nat;


 s = NewUDP4(MAKE_SPECIAL_PORT(IP_PROTO_ICMPV4), ((void*)0));
 if (s != ((void*)0))
 {
  if (s->IsTtlSupported)
  {
   v->IcmpRawSocketOk = 1;
  }

  ReleaseSock(s);
 }

 if (v->IcmpRawSocketOk == 0)
 {
  if (IsIcmpApiSupported())
  {
   v->IcmpApiOk = 1;
  }
 }


 SetVirtualHostOption(v, vh_option);

 return v;
}
