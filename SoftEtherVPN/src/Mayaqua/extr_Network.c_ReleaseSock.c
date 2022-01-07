
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ListenMode; scalar_t__ ServerMode; int ref; } ;
typedef TYPE_1__ SOCK ;


 int CleanupSock (TYPE_1__*) ;
 int Print (char*) ;
 scalar_t__ Release (int ) ;

void ReleaseSock(SOCK *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (Release(s->ref) == 0)
 {
  if (s->ListenMode == 0 && s->ServerMode)
  {
   Print("");
  }
  CleanupSock(s);
 }
}
