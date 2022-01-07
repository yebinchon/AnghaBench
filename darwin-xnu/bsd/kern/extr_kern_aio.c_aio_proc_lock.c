
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int aio_proc_mutex (int ) ;
 int lck_mtx_lock (int ) ;

__attribute__((used)) static void
aio_proc_lock(proc_t procp)
{
 lck_mtx_lock(aio_proc_mutex(procp));
}
