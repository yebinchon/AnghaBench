
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IpWaitTable; } ;
typedef TYPE_1__ VH ;


 int NewList (int *) ;

void InitIpWaitTable(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 v->IpWaitTable = NewList(((void*)0));
}
