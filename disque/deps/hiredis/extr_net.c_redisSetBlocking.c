
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_OK ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,char*) ;
 int fcntl (int ,int ,...) ;
 int redisContextCloseFd (TYPE_1__*) ;

__attribute__((used)) static int redisSetBlocking(redisContext *c, int blocking) {
    int flags;




    if ((flags = fcntl(c->fd, F_GETFL)) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,"fcntl(F_GETFL)");
        redisContextCloseFd(c);
        return REDIS_ERR;
    }

    if (blocking)
        flags &= ~O_NONBLOCK;
    else
        flags |= O_NONBLOCK;

    if (fcntl(c->fd, F_SETFL, flags) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,"fcntl(F_SETFL)");
        redisContextCloseFd(c);
        return REDIS_ERR;
    }
    return REDIS_OK;
}
