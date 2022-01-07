
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IpCombine; } ;
typedef TYPE_1__ VH ;


 int CompareIpCombine ;
 int NewList (int ) ;

void InitIpCombineList(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 v->IpCombine = NewList(CompareIpCombine);
}
