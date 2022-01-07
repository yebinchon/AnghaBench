
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLATFORM_MUTEX_T ;
typedef scalar_t__ KHR_STATUS_T ;
typedef int CLIENT_THREAD_STATE_T ;


 scalar_t__ KHR_SUCCESS ;
 int client_send_make_current (int *) ;
 int client_thread_state_init (int *) ;
 int client_tls ;
 int client_tls_mutex ;
 int khrn_platform_free (int *) ;
 scalar_t__ khrn_platform_malloc (int,char*) ;
 scalar_t__ platform_mutex_create (int *) ;
 int platform_tls_set (int ,int *) ;
 scalar_t__ vcos_tls_get (int ) ;
 int vcos_tls_set (int ,int *) ;

bool client_thread_attach()
{
   CLIENT_THREAD_STATE_T *state = (CLIENT_THREAD_STATE_T *)khrn_platform_malloc(sizeof(CLIENT_THREAD_STATE_T), "CLIENT_THREAD_STATE_T");

   if (!state)
      return 0;

   client_thread_state_init(state);

   platform_tls_set(client_tls, state);
   client_send_make_current(state);

   return 1;
}
