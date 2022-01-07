
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; } ;
typedef TYPE_1__ RPC_GET_CA ;


 int FreeX (int ) ;

void CiFreeGetCa(RPC_GET_CA *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 FreeX(a->x);
}
