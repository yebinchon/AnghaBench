
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* Session; } ;
typedef TYPE_1__ VH ;
struct TYPE_9__ {int ref; } ;
typedef TYPE_2__ SESSION ;


 int AddRef (int ) ;
 int LockVirtual (TYPE_1__*) ;
 int ReleaseSession (TYPE_2__*) ;
 int StopSession (TYPE_2__*) ;
 int UnlockVirtual (TYPE_1__*) ;

void StopVirtualHost(VH *v)
{
 SESSION *s;

 if (v == ((void*)0))
 {
  return;
 }


 LockVirtual(v);
 {
  s = v->Session;
  if (s != ((void*)0))
  {
   AddRef(s->ref);
  }
 }
 UnlockVirtual(v);

 if (s == ((void*)0))
 {

  return;
 }


 StopSession(s);

 ReleaseSession(s);
}
