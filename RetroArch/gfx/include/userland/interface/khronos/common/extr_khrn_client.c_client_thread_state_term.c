
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int platform_term_rpc (int *) ;

void client_thread_state_term(CLIENT_THREAD_STATE_T *state)
{

   platform_term_rpc( state );
}
