
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ HUB ;


 int CleanupHub (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseHub(HUB *h)
{

 if (h == ((void*)0))
 {
  return;
 }

 if (Release(h->ref) == 0)
 {
  CleanupHub(h);
 }
}
