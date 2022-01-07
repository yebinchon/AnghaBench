
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
typedef TYPE_1__ slock_t ;
struct TYPE_8__ {int cond; } ;
typedef TYPE_2__ scond_t ;


 int INFINITE ;
 int _scond_wait_win32 (TYPE_2__*,TYPE_1__*,int ) ;
 int pthread_cond_wait (int *,int *) ;

void scond_wait(scond_t *cond, slock_t *lock)
{



   pthread_cond_wait(&cond->cond, &lock->lock);

}
