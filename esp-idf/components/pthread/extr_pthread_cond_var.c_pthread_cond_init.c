
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_condattr_t ;
typedef scalar_t__ pthread_cond_t ;
struct TYPE_2__ {int waiter_list; int lock; } ;
typedef TYPE_1__ esp_pthread_cond_t ;


 int EINVAL ;
 int ENOMEM ;
 int TAILQ_INIT (int *) ;
 int _lock_init_recursive (int *) ;
 scalar_t__ calloc (int,int) ;

int pthread_cond_init(pthread_cond_t *cv, const pthread_condattr_t *att)
{
    (void) att;

    if (cv == ((void*)0)) {
        return EINVAL;
    }

    esp_pthread_cond_t *cond = (esp_pthread_cond_t *) calloc(1, sizeof(esp_pthread_cond_t));
    if (cond == ((void*)0)) {
        return ENOMEM;
    }

    _lock_init_recursive(&cond->lock);
    TAILQ_INIT(&cond->waiter_list);

    *cv = (pthread_cond_t) cond;
    return 0;
}
