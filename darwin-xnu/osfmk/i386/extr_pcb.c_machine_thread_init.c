
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_saved_state_t ;
typedef int x86_debug_state64_t ;


 int THREAD_CHUNK ;
 int fpu_module_init () ;
 void* ids_zone ;
 void* iss_zone ;
 int thread_max ;
 void* zinit (int,int,int,char*) ;

void
machine_thread_init(void)
{
 iss_zone = zinit(sizeof(x86_saved_state_t),
   thread_max * sizeof(x86_saved_state_t),
   THREAD_CHUNK * sizeof(x86_saved_state_t),
   "x86_64 saved state");

        ids_zone = zinit(sizeof(x86_debug_state64_t),
    thread_max * sizeof(x86_debug_state64_t),
    THREAD_CHUNK * sizeof(x86_debug_state64_t),
    "x86_64 debug state");

 fpu_module_init();
}
