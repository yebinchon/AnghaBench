
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 void* get_user_regs (int ) ;

void *
find_user_regs(thread_t thread)
{
 return get_user_regs(thread);
}
