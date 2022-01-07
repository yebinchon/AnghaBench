
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int redisConnectCallback ;
struct TYPE_4__ {int * onConnect; } ;
typedef TYPE_1__ redisAsyncContext ;


 int REDIS_ERR ;
 int REDIS_OK ;
 int _EL_ADD_WRITE (TYPE_1__*) ;

int redisAsyncSetConnectCallback(redisAsyncContext *ac, redisConnectCallback *fn) {
    if (ac->onConnect == ((void*)0)) {
        ac->onConnect = fn;




        _EL_ADD_WRITE(ac);
        return REDIS_OK;
    }
    return REDIS_ERR;
}
