
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_cond_t ;
struct TYPE_3__ {int lock; int waiter_list; } ;
typedef TYPE_1__ esp_pthread_cond_t ;


 int EBUSY ;
 int EINVAL ;
 int TAILQ_EMPTY (int *) ;
 int _lock_acquire_recursive (int *) ;
 int _lock_close_recursive (int *) ;
 int _lock_release_recursive (int *) ;
 int free (TYPE_1__*) ;

int pthread_cond_destroy(pthread_cond_t *cv)
{
    int ret = 0;

    if (cv == ((void*)0) || *cv == (pthread_cond_t) 0) {
        return EINVAL;
    }

    esp_pthread_cond_t *cond = (esp_pthread_cond_t *) *cv;

    _lock_acquire_recursive(&cond->lock);
    if (!TAILQ_EMPTY(&cond->waiter_list)) {
        ret = EBUSY;
    }
    _lock_release_recursive(&cond->lock);

    if (ret == 0) {
        *cv = (pthread_cond_t) 0;
        _lock_close_recursive(&cond->lock);
        free(cond);
    }

    return ret;
}
