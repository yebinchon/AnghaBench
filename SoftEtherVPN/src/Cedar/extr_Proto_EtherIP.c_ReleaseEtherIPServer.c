
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ref; } ;
typedef TYPE_1__ ETHERIP_SERVER ;


 int CleanupEtherIPServer (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseEtherIPServer(ETHERIP_SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (Release(s->Ref) == 0)
 {
  CleanupEtherIPServer(s);
 }
}
