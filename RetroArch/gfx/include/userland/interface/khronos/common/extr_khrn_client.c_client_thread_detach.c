
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLATFORM_MUTEX_T ;
typedef int CLIENT_THREAD_STATE_T ;
typedef int CLIENT_PROCESS_STATE_T ;


 int * CLIENT_GET_PROCESS_STATE () ;
 int * CLIENT_GET_THREAD_STATE () ;
 int UNUSED (void*) ;
 int client_thread_state_term (int *) ;
 int client_tls ;
 int client_tls_mutex ;
 int client_tls_process ;
 int khrn_platform_free (int *) ;
 int platform_maybe_free_process () ;
 int platform_mutex_destroy (int *) ;
 int platform_tls_remove (int ) ;
 int vcos_assert (int *) ;
 scalar_t__ vcos_tls_get (int ) ;

void client_thread_detach(void *dummy)
{
   CLIENT_THREAD_STATE_T *state = CLIENT_GET_THREAD_STATE();
   UNUSED(dummy);

   platform_tls_remove(client_tls);
   client_thread_state_term(state);

   khrn_platform_free(state);
   platform_maybe_free_process();
}
