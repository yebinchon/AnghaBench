
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ CANCEL ;


 int CleanupCancel (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseCancel(CANCEL *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 if (Release(c->ref) == 0)
 {
  CleanupCancel(c);
 }
}
