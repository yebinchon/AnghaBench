
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int lck_mtx_t ;
struct TYPE_3__ {int p_mlock; } ;



__attribute__((used)) static lck_mtx_t*
aio_proc_mutex(proc_t procp)
{
 return &procp->p_mlock;
}
