
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* CmdLine; struct TYPE_4__* ServerName; } ;
typedef TYPE_1__ PC ;


 int Free (TYPE_1__*) ;

void FreePc(PC *pc)
{

 if (pc == ((void*)0))
 {
  return;
 }

 Free(pc->ServerName);
 Free(pc->CmdLine);
 Free(pc);
}
