
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ServerName; struct TYPE_4__* CmdLine; struct TYPE_4__* AdminHub; struct TYPE_4__* HubName; } ;
typedef TYPE_1__ PS ;


 int Free (TYPE_1__*) ;

void FreePs(PS *ps)
{

 if (ps == ((void*)0))
 {
  return;
 }

 Free(ps->HubName);
 Free(ps->AdminHub);
 Free(ps->CmdLine);
 Free(ps->ServerName);

 Free(ps);
}
