
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ EVENT ;


 int CleanupEvent (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseEvent(EVENT *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 if (Release(e->ref) == 0)
 {
  CleanupEvent(e);
 }
}
