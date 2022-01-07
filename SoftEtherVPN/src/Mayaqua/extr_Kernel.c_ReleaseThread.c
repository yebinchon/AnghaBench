
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {int ref; TYPE_2__* release_event; } ;
typedef TYPE_1__ THREAD ;
typedef TYPE_2__ EVENT ;


 int AddRef (int ) ;
 int CleanupThread (TYPE_1__*) ;
 scalar_t__ Release (int ) ;
 int ReleaseEvent (TYPE_2__*) ;
 int Set (TYPE_2__*) ;

void ReleaseThread(THREAD *t)
{
 UINT ret;
 EVENT *e;

 if (t == ((void*)0))
 {
  return;
 }

 e = t->release_event;
 if (e != ((void*)0))
 {
  AddRef(e->ref);
 }

 ret = Release(t->ref);
 Set(e);

 ReleaseEvent(e);

 if (ret == 0)
 {
  CleanupThread(t);
 }
}
