
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aio_workq_t ;


 int aio_workq_mutex (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static void
aio_workq_unlock(aio_workq_t wq)
{
 lck_mtx_unlock(aio_workq_mutex(wq));
}
