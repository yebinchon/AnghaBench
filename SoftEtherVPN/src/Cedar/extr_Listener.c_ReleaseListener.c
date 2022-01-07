
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ LISTENER ;


 int CleanupListener (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseListener(LISTENER *r)
{

 if (r == ((void*)0))
 {
  return;
 }

 if (Release(r->ref) == 0)
 {
  CleanupListener(r);
 }
}
