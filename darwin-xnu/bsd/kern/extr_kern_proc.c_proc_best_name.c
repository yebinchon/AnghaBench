
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {scalar_t__* p_name; char* p_comm; } ;



char *
proc_best_name(proc_t p)
{
    if (p->p_name[0] != 0)
        return (&p->p_name[0]);
    return (&p->p_comm[0]);
}
