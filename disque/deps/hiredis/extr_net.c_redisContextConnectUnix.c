
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
struct TYPE_6__ {int flags; int fd; } ;
typedef TYPE_1__ redisContext ;


 int AF_LOCAL ;
 scalar_t__ EINPROGRESS ;
 int REDIS_BLOCK ;
 int REDIS_CONNECTED ;
 int REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int connect (int ,struct sockaddr*,int) ;
 scalar_t__ errno ;
 scalar_t__ redisContextWaitReady (TYPE_1__*,struct timeval const*) ;
 scalar_t__ redisCreateSocket (TYPE_1__*,int ) ;
 scalar_t__ redisSetBlocking (TYPE_1__*,int) ;
 int strncpy (int ,char const*,int) ;

int redisContextConnectUnix(redisContext *c, const char *path, const struct timeval *timeout) {
    int blocking = (c->flags & REDIS_BLOCK);
    struct sockaddr_un sa;

    if (redisCreateSocket(c,AF_LOCAL) < 0)
        return REDIS_ERR;
    if (redisSetBlocking(c,0) != REDIS_OK)
        return REDIS_ERR;

    sa.sun_family = AF_LOCAL;
    strncpy(sa.sun_path,path,sizeof(sa.sun_path)-1);
    if (connect(c->fd, (struct sockaddr*)&sa, sizeof(sa)) == -1) {
        if (errno == EINPROGRESS && !blocking) {

        } else {
            if (redisContextWaitReady(c,timeout) != REDIS_OK)
                return REDIS_ERR;
        }
    }


    if (blocking && redisSetBlocking(c,1) != REDIS_OK)
        return REDIS_ERR;

    c->flags |= REDIS_CONNECTED;
    return REDIS_OK;
}
