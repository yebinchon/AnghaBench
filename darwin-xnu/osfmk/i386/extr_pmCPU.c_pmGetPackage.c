
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_pkg_t ;


 int * cpu_to_package (int) ;

__attribute__((used)) static x86_pkg_t *
pmGetPackage(int cpu)
{
    return(cpu_to_package(cpu));
}
