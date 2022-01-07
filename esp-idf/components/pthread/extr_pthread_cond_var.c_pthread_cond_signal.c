
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pthread_cond_t ;
struct TYPE_4__ {int wait_sem; } ;
typedef TYPE_1__ esp_pthread_cond_waiter_t ;
struct TYPE_5__ {int lock; int waiter_list; } ;
typedef TYPE_2__ esp_pthread_cond_t ;


 int EINVAL ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int _lock_acquire_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 int xSemaphoreGive (int ) ;

int pthread_cond_signal(pthread_cond_t *cv)
{
    if (cv == ((void*)0) || *cv == (pthread_cond_t) 0) {
        return EINVAL;
    }

    esp_pthread_cond_t *cond = (esp_pthread_cond_t *) *cv;

    _lock_acquire_recursive(&cond->lock);
    esp_pthread_cond_waiter_t *entry;
    entry = TAILQ_FIRST(&cond->waiter_list);
    if (entry) {
        xSemaphoreGive(entry->wait_sem);
    }
    _lock_release_recursive(&cond->lock);

    return 0;
}
