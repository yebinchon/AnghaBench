
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * L3SwList; } ;
typedef TYPE_1__ CEDAR ;


 int ReleaseList (int *) ;

void FreeCedarLayer3(CEDAR *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 ReleaseList(c->L3SwList);
 c->L3SwList = ((void*)0);
}
