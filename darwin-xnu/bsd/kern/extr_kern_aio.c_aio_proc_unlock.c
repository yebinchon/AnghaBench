
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int aio_proc_mutex (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static void
aio_proc_unlock(proc_t procp)
{
 lck_mtx_unlock(aio_proc_mutex(procp));
}
