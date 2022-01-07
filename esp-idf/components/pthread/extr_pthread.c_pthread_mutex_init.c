
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int is_initialized; } ;
typedef TYPE_1__ pthread_mutexattr_t ;
typedef scalar_t__ pthread_mutex_t ;
struct TYPE_7__ {int type; int sem; } ;
typedef TYPE_2__ esp_pthread_mutex_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_MUTEX_NORMAL ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int mutexattr_check (TYPE_1__ const*) ;
 int xSemaphoreCreateMutex () ;
 int xSemaphoreCreateRecursiveMutex () ;

int pthread_mutex_init(pthread_mutex_t *mutex, const pthread_mutexattr_t *attr)
{
    int type = PTHREAD_MUTEX_NORMAL;

    if (!mutex) {
        return EINVAL;
    }

    if (attr) {
        if (!attr->is_initialized) {
            return EINVAL;
        }
        int res = mutexattr_check(attr);
        if (res) {
            return res;
        }
        type = attr->type;
    }

    esp_pthread_mutex_t *mux = (esp_pthread_mutex_t *)malloc(sizeof(esp_pthread_mutex_t));
    if (!mux) {
        return ENOMEM;
    }
    mux->type = type;

    if (mux->type == PTHREAD_MUTEX_RECURSIVE) {
        mux->sem = xSemaphoreCreateRecursiveMutex();
    } else {
        mux->sem = xSemaphoreCreateMutex();
    }
    if (!mux->sem) {
        free(mux);
        return EAGAIN;
    }

    *mutex = (pthread_mutex_t)mux;

    return 0;
}
