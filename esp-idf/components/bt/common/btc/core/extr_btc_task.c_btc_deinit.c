
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btc_adv_list_deinit () ;
 int btc_deinit_mem () ;
 int * btc_thread ;
 int osi_thread_free (int *) ;

void btc_deinit(void)
{




    osi_thread_free(btc_thread);
    btc_thread = ((void*)0);




}
