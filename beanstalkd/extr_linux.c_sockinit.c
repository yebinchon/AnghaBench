
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int epfd ;
 int epoll_create (int) ;
 int twarn (char*) ;

int
sockinit(void)
{
    epfd = epoll_create(1);
    if (epfd == -1) {
        twarn("epoll_create");
        return -1;
    }
    return 0;
}
