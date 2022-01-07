
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int mutex; } ;


 int lck_mtx_lock (int *) ;

void
thread_mtx_lock(thread_t thread)
{
 lck_mtx_lock(&thread->mutex);
}
