
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_data {int * cpu_kpc_reload; int * cpu_kpc_shadow; int ** cpu_kpc_buf; } ;


 int COUNTERBUF_SIZE_PER_CPU ;
 int assert (struct cpu_data*) ;
 int kfree (int *,int ) ;

void
kpc_unregister_cpu(struct cpu_data *cpu_data)
{
 assert(cpu_data);
 if (cpu_data->cpu_kpc_buf[0] != ((void*)0)) {
  kfree(cpu_data->cpu_kpc_buf[0], COUNTERBUF_SIZE_PER_CPU);
  cpu_data->cpu_kpc_buf[0] = ((void*)0);
 }
 if (cpu_data->cpu_kpc_buf[1] != ((void*)0)) {
  kfree(cpu_data->cpu_kpc_buf[1], COUNTERBUF_SIZE_PER_CPU);
  cpu_data->cpu_kpc_buf[1] = ((void*)0);
 }
 if (cpu_data->cpu_kpc_shadow != ((void*)0)) {
  kfree(cpu_data->cpu_kpc_shadow, COUNTERBUF_SIZE_PER_CPU);
  cpu_data->cpu_kpc_shadow = ((void*)0);
 }
 if (cpu_data->cpu_kpc_reload != ((void*)0)) {
  kfree(cpu_data->cpu_kpc_reload, COUNTERBUF_SIZE_PER_CPU);
  cpu_data->cpu_kpc_reload = ((void*)0);
 }
}
