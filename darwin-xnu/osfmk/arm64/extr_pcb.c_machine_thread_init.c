
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_debug_state_t ;
typedef int arm_context_t ;


 int CONFIG_THREAD_MAX ;
 int THREAD_CHUNK ;
 int USER_SS_ZONE_ALLOC_SIZE ;
 void* ads_zone ;
 void* user_ss_zone ;
 void* zinit (int,int,int,char*) ;

void
machine_thread_init(void)
{
 ads_zone = zinit(sizeof(arm_debug_state_t),
                  THREAD_CHUNK * (sizeof(arm_debug_state_t)),
                  THREAD_CHUNK * (sizeof(arm_debug_state_t)),
                  "arm debug state");
 user_ss_zone = zinit(sizeof(arm_context_t),
                      CONFIG_THREAD_MAX * (sizeof(arm_context_t)),
                      USER_SS_ZONE_ALLOC_SIZE,
                      "user save state");
}
