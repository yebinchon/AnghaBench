
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int SrcAddress; int SrcIP; } ;
struct TYPE_5__ {TYPE_3__* ARPv4Header; } ;
struct TYPE_6__ {TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef int L3IF ;
typedef TYPE_3__ ARPV4_HEADER ;


 int L3KnownArp (int *,int ,int ) ;

void L3RecvArpResponse(L3IF *f, PKT *p)
{
 ARPV4_HEADER *a;

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 a = p->L3.ARPv4Header;

 L3KnownArp(f, a->SrcIP, a->SrcAddress);
}
