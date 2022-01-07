
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ pthread_mutexattr_t ;


 int EINVAL ;
 scalar_t__ PTHREAD_MUTEX_ERRORCHECK ;
 scalar_t__ PTHREAD_MUTEX_NORMAL ;
 scalar_t__ PTHREAD_MUTEX_RECURSIVE ;

__attribute__((used)) static int mutexattr_check(const pthread_mutexattr_t *attr)
{
    if (attr->type != PTHREAD_MUTEX_NORMAL &&
        attr->type != PTHREAD_MUTEX_RECURSIVE &&
        attr->type != PTHREAD_MUTEX_ERRORCHECK) {
        return EINVAL;
    }
    return 0;
}
