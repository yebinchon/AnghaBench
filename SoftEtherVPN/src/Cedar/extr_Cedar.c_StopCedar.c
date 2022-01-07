
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Halt; } ;
typedef TYPE_1__ CEDAR ;


 int L3FreeAllSw (TYPE_1__*) ;
 int StopAllConnection (TYPE_1__*) ;
 int StopAllHub (TYPE_1__*) ;
 int StopAllListener (TYPE_1__*) ;

void StopCedar(CEDAR *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 c->Halt = 1;


 StopAllListener(c);

 StopAllConnection(c);

 StopAllHub(c);

 L3FreeAllSw(c);
}
