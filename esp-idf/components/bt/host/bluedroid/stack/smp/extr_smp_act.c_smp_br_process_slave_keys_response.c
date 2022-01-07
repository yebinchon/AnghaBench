
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSMP_INT_DATA ;
typedef int tSMP_CB ;


 int smp_br_send_pair_response (int *,int *) ;

void smp_br_process_slave_keys_response(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    smp_br_send_pair_response(p_cb, ((void*)0));
}
