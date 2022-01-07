
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int current_thread_fast () ;

thread_t
current_act(void)
{
 return current_thread_fast();
}
