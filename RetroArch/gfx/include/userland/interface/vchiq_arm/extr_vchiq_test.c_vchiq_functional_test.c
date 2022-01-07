
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_2__ {int iters; } ;


 scalar_t__ VCHIQ_ERROR ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ do_functional_test () ;
 TYPE_1__ g_params ;
 int printf (char*,int) ;

__attribute__((used)) static VCHIQ_STATUS_T
vchiq_functional_test(void)
{
   int i;
   printf("Functional test - iters:%d\n", g_params.iters);
   for (i = 0; i < g_params.iters; i++)
   {
      printf("======== iteration %d ========\n", i+1);

      if (do_functional_test() != VCHIQ_SUCCESS)
         return VCHIQ_ERROR;
   }
   return VCHIQ_SUCCESS;
}
