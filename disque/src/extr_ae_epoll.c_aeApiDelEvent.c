
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; scalar_t__ u64; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
struct TYPE_8__ {TYPE_2__* events; TYPE_4__* apidata; } ;
typedef TYPE_3__ aeEventLoop ;
struct TYPE_9__ {int epfd; } ;
typedef TYPE_4__ aeApiState ;
struct TYPE_7__ {int mask; } ;


 int AE_NONE ;
 int AE_READABLE ;
 int AE_WRITABLE ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLL_CTL_DEL ;
 int EPOLL_CTL_MOD ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;

__attribute__((used)) static void aeApiDelEvent(aeEventLoop *eventLoop, int fd, int delmask) {
    aeApiState *state = eventLoop->apidata;
    struct epoll_event ee;
    int mask = eventLoop->events[fd].mask & (~delmask);

    ee.events = 0;
    if (mask & AE_READABLE) ee.events |= EPOLLIN;
    if (mask & AE_WRITABLE) ee.events |= EPOLLOUT;
    ee.data.u64 = 0;
    ee.data.fd = fd;
    if (mask != AE_NONE) {
        epoll_ctl(state->epfd,EPOLL_CTL_MOD,fd,&ee);
    } else {


        epoll_ctl(state->epfd,EPOLL_CTL_DEL,fd,&ee);
    }
}
