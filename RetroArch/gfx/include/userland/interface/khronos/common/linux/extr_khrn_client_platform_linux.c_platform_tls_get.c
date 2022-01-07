
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLATFORM_TLS_T ;


 int client_process_attach () ;
 int client_thread_attach () ;
 int client_thread_detach ;
 int client_tls ;
 int process_attached ;
 int vc_vchi_khronos_init () ;
 int vcos_log_trace (char*) ;
 int vcos_thread_at_exit (int ,int *) ;
 void* vcos_tls_get (int ) ;

void *platform_tls_get(PLATFORM_TLS_T tls)
{
   void *ret;

   if (!process_attached)

   {
      vcos_log_trace("Attaching process");
      client_process_attach();
      process_attached = 1;
      tls = client_tls;

      vc_vchi_khronos_init();
   }

   ret = vcos_tls_get(tls);
   if (!ret)
   {






      client_thread_attach();
      vcos_thread_at_exit(client_thread_detach, ((void*)0));
      ret = vcos_tls_get(tls);
   }
   return ret;
}
