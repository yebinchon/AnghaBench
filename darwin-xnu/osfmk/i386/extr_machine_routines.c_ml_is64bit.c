
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int cpu_mode_is64bit () ;

boolean_t ml_is64bit(void) {

        return (cpu_mode_is64bit());
}
