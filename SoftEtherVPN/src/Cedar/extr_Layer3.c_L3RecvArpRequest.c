
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int SrcIP; int SrcAddress; int TargetIP; } ;
struct TYPE_11__ {int IpAddress; } ;
struct TYPE_9__ {TYPE_4__* ARPv4Header; } ;
struct TYPE_10__ {TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef TYPE_3__ L3IF ;
typedef TYPE_4__ ARPV4_HEADER ;


 int L3KnownArp (TYPE_3__*,int ,int ) ;
 int L3SendArpResponseNow (TYPE_3__*,int ,int ,int ) ;

void L3RecvArpRequest(L3IF *f, PKT *p)
{
 ARPV4_HEADER *a;

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 a = p->L3.ARPv4Header;

 L3KnownArp(f, a->SrcIP, a->SrcAddress);

 if (a->TargetIP == f->IpAddress)
 {

  L3SendArpResponseNow(f, a->SrcAddress, a->SrcIP, f->IpAddress);
 }
}
