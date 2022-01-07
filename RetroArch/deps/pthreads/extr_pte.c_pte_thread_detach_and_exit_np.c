
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pte_thread_detach_common (int) ;

int pte_thread_detach_and_exit_np(void)
{
   return pte_thread_detach_common(1);
}
