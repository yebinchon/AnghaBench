
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arm_debug_state_t ;


 int THREAD_CHUNK ;
 int ads_zone ;
 int zinit (int,int,int,char*) ;

void
machine_thread_init(void)
{
 ads_zone = zinit(sizeof(arm_debug_state_t),
      THREAD_CHUNK * (sizeof(arm_debug_state_t)),
      THREAD_CHUNK * (sizeof(arm_debug_state_t)),
      "arm debug state");
}
