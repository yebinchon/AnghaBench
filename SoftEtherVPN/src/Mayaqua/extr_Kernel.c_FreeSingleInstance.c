
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Name; int pData; } ;
typedef TYPE_1__ INSTANCE ;


 int Free (TYPE_1__*) ;
 int OSFreeSingleInstance (int ) ;

void FreeSingleInstance(INSTANCE *inst)
{

 if (inst == ((void*)0))
 {
  return;
 }

 OSFreeSingleInstance(inst->pData);

 if (inst->Name != ((void*)0))
 {
  Free(inst->Name);
 }
 Free(inst);
}
