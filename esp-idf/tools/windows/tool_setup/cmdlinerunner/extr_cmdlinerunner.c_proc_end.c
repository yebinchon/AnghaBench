
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_instance_t ;


 int proc_instance_free (int *) ;

void proc_end(proc_instance_t *inst)
{
    if (inst == ((void*)0)) {
        return;
    }
    proc_instance_free(inst);
}
