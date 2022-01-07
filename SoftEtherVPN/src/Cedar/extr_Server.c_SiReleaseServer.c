
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ SERVER ;


 scalar_t__ Release (int ) ;
 int SiCleanupServer (TYPE_1__*) ;

void SiReleaseServer(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (Release(s->ref) == 0)
 {
  SiCleanupServer(s);
 }
}
