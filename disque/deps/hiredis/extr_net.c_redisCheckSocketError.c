
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ redisContext ;
typedef int err ;


 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_OK ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,char*) ;
 int errno ;
 int getsockopt (int ,int ,int ,int*,int*) ;

int redisCheckSocketError(redisContext *c) {
    int err = 0;
    socklen_t errlen = sizeof(err);

    if (getsockopt(c->fd, SOL_SOCKET, SO_ERROR, &err, &errlen) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,"getsockopt(SO_ERROR)");
        return REDIS_ERR;
    }

    if (err) {
        errno = err;
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,((void*)0));
        return REDIS_ERR;
    }

    return REDIS_OK;
}
