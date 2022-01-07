
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_free () ;
 int register_make () ;
 int register_restart () ;

void register_system(void)
{
    register_free();
    register_restart();
    register_make();
}
