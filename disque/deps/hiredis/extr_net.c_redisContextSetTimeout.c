
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tv ;
struct timeval {int dummy; } ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_ERR ;
 int REDIS_ERR_IO ;
 int REDIS_OK ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int __redisSetErrorFromErrno (TYPE_1__*,int ,char*) ;
 int setsockopt (int ,int ,int ,struct timeval const*,int) ;

int redisContextSetTimeout(redisContext *c, const struct timeval tv) {
    if (setsockopt(c->fd,SOL_SOCKET,SO_RCVTIMEO,&tv,sizeof(tv)) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,"setsockopt(SO_RCVTIMEO)");
        return REDIS_ERR;
    }
    if (setsockopt(c->fd,SOL_SOCKET,SO_SNDTIMEO,&tv,sizeof(tv)) == -1) {
        __redisSetErrorFromErrno(c,REDIS_ERR_IO,"setsockopt(SO_SNDTIMEO)");
        return REDIS_ERR;
    }
    return REDIS_OK;
}
