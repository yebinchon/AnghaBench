
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* CmdLine; } ;
typedef TYPE_1__ PT ;


 int Free (TYPE_1__*) ;

void FreePt(PT *pt)
{

 if (pt == ((void*)0))
 {
  return;
 }

 Free(pt->CmdLine);
 Free(pt);
}
