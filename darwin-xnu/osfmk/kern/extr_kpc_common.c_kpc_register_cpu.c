
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_data {int * cpu_kpc_reload; int * cpu_kpc_shadow; int ** cpu_kpc_buf; } ;
typedef int boolean_t ;


 int COUNTERBUF_SIZE_PER_CPU ;
 int FALSE ;
 int TRUE ;
 int assert (struct cpu_data*) ;
 void* kalloc (int ) ;
 int kpc_unregister_cpu (struct cpu_data*) ;
 int memset (int *,int ,int ) ;

boolean_t
kpc_register_cpu(struct cpu_data *cpu_data)
{
 assert(cpu_data);
 assert(cpu_data->cpu_kpc_buf[0] == ((void*)0));
 assert(cpu_data->cpu_kpc_buf[1] == ((void*)0));
 assert(cpu_data->cpu_kpc_shadow == ((void*)0));
 assert(cpu_data->cpu_kpc_reload == ((void*)0));
 if ((cpu_data->cpu_kpc_buf[0] = kalloc(COUNTERBUF_SIZE_PER_CPU)) == ((void*)0))
  goto error;
 if ((cpu_data->cpu_kpc_buf[1] = kalloc(COUNTERBUF_SIZE_PER_CPU)) == ((void*)0))
  goto error;
 if ((cpu_data->cpu_kpc_shadow = kalloc(COUNTERBUF_SIZE_PER_CPU)) == ((void*)0))
  goto error;
 if ((cpu_data->cpu_kpc_reload = kalloc(COUNTERBUF_SIZE_PER_CPU)) == ((void*)0))
  goto error;

 memset(cpu_data->cpu_kpc_buf[0], 0, COUNTERBUF_SIZE_PER_CPU);
 memset(cpu_data->cpu_kpc_buf[1], 0, COUNTERBUF_SIZE_PER_CPU);
 memset(cpu_data->cpu_kpc_shadow, 0, COUNTERBUF_SIZE_PER_CPU);
 memset(cpu_data->cpu_kpc_reload, 0, COUNTERBUF_SIZE_PER_CPU);


 return TRUE;

error:
 kpc_unregister_cpu(cpu_data);
 return FALSE;
}
