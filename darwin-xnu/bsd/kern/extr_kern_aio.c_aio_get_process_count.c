
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_aio_total_count; } ;



__attribute__((used)) static int
aio_get_process_count(proc_t procp )
{
 return procp->p_aio_total_count;

}
