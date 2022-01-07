
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_aio_active_count; } ;



__attribute__((used)) static int
aio_active_requests_for_process(proc_t procp )
{
 return( procp->p_aio_active_count );

}
