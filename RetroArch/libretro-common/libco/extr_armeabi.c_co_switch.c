
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int co_active () ;
 int co_active_handle ;
 int co_switch_arm (int ,int ) ;

void co_switch(cothread_t handle)
{
   cothread_t co_previous_handle = co_active();
   co_switch_arm(co_active_handle = handle, co_previous_handle);
}
