
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ldmWindowCond; int ldmWindowMutex; int cond; int mutex; } ;
typedef TYPE_1__ serialState_t ;


 int ZSTD_pthread_cond_init (int *,int *) ;
 int ZSTD_pthread_mutex_init (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int ZSTDMT_serialState_init(serialState_t* serialState)
{
    int initError = 0;
    memset(serialState, 0, sizeof(*serialState));
    initError |= ZSTD_pthread_mutex_init(&serialState->mutex, ((void*)0));
    initError |= ZSTD_pthread_cond_init(&serialState->cond, ((void*)0));
    initError |= ZSTD_pthread_mutex_init(&serialState->ldmWindowMutex, ((void*)0));
    initError |= ZSTD_pthread_cond_init(&serialState->ldmWindowCond, ((void*)0));
    return initError;
}
