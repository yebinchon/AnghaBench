
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ notBefore; scalar_t__ notAfter; } ;
typedef TYPE_1__ X ;
typedef scalar_t__ UINT64 ;



bool CheckXDate(X *x, UINT64 current_system_time)
{

 if (x == ((void*)0))
 {
  return 0;
 }

 if (x->notBefore >= current_system_time || x->notAfter <= current_system_time)
 {
  return 0;
 }
 return 1;
}
