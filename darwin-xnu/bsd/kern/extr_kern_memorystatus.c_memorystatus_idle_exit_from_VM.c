
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int kill_idle_exit_proc () ;

boolean_t memorystatus_idle_exit_from_VM(void) {
 return(kill_idle_exit_proc());
}
