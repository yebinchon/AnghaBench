
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; int sem; } ;
typedef TYPE_1__ hb_lock_t ;
struct TYPE_6__ {int thread; int cond; } ;
typedef TYPE_2__ hb_cond_t ;


 int acquire_sem (int ) ;
 int find_thread (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int release_sem (int ) ;
 int suspend_thread (int) ;

void hb_cond_wait( hb_cond_t * c, hb_lock_t * lock )
{
}
