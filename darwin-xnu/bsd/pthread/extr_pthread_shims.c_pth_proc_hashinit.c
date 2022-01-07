
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int proc_t ;
struct TYPE_2__ {int (* pth_proc_hashinit ) (int ) ;} ;


 TYPE_1__* pthread_functions ;
 int stub1 (int ) ;

void
pth_proc_hashinit(proc_t p)
{
 pthread_functions->pth_proc_hashinit(p);
}
