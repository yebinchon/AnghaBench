
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int DIRTY ;
 void* USER_STATE (int ) ;
 int pal_register_cache_state (int ,int ) ;

void *
get_user_regs(thread_t th)
{
 pal_register_cache_state(th, DIRTY);
 return(USER_STATE(th));
}
