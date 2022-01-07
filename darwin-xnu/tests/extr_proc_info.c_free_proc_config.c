
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_config_t ;


 int free (int ) ;

__attribute__((used)) static void
free_proc_config(proc_config_t proc_config)
{
 free(proc_config);
}
