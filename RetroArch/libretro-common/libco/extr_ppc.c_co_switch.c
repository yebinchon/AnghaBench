
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int CO_SWAP_ASM (int ,int ) ;
 int co_active_handle ;

void co_switch(cothread_t t)
{
   cothread_t old = co_active_handle;
   co_active_handle = t;

   CO_SWAP_ASM( t, old );
}
