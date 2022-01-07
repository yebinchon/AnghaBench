
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IpCombine; } ;
typedef TYPE_1__ NATIVE_NAT ;


 int CompareIpCombine ;
 int NewList (int ) ;

void NnInitIpCombineList(NATIVE_NAT *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 t->IpCombine = NewList(CompareIpCombine);
}
