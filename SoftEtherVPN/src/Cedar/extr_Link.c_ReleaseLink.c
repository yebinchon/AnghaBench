
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ LINK ;


 int CleanupLink (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseLink(LINK *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 if (Release(k->ref) == 0)
 {
  CleanupLink(k);
 }
}
