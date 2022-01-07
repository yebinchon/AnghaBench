
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_die_t ;


 int * cpu_to_die (int) ;

__attribute__((used)) static x86_die_t *
pmGetDie(int cpu)
{
    return(cpu_to_die(cpu));
}
