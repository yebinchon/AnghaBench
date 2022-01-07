
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int IPPROTO_TCP ;
 int REDIS_ERR ;
 int REDIS_ERR_OTHER ;
 int REDIS_OK ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_KEEPALIVE ;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int __redisSetError (TYPE_1__*,int ,int ) ;
 int errno ;
 int setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;

int redisKeepAlive(redisContext *c, int interval) {
    int val = 1;
    int fd = c->fd;

    if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, &val, sizeof(val)) == -1){
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }

    val = interval;
    val = interval;
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPIDLE, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }

    val = interval/3;
    if (val == 0) val = 1;
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPINTVL, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }

    val = 3;
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPCNT, &val, sizeof(val)) < 0) {
        __redisSetError(c,REDIS_ERR_OTHER,strerror(errno));
        return REDIS_ERR;
    }



    return REDIS_OK;
}
