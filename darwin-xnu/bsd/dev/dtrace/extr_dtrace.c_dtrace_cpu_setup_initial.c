
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processorid_t ;


 int CPU_CONFIG ;
 int dtrace_cpu_setup (int ,int ) ;

__attribute__((used)) static void
dtrace_cpu_setup_initial(processorid_t cpu)
{
 (void) dtrace_cpu_setup(CPU_CONFIG, cpu);
}
