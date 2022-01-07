
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int task; } ;


 int assert (int ) ;
 scalar_t__ task_get_64bit_data (int ) ;

int
proc_is64bit_data(proc_t p)
{
 assert(p->task);
 return (int)task_get_64bit_data(p->task);
}
