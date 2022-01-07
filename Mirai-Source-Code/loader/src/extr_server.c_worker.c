
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_worker {int efd; int thread_id; } ;
struct epoll_event {int dummy; } ;


 scalar_t__ TRUE ;
 int bind_core (int ) ;
 int epoll_wait (int ,struct epoll_event*,int,int) ;
 int handle_event (struct server_worker*,struct epoll_event*) ;
 int perror (char*) ;

__attribute__((used)) static void *worker(void *arg)
{
    struct server_worker *wrker = (struct server_worker *)arg;
    struct epoll_event events[128];

    bind_core(wrker->thread_id);

    while (TRUE)
    {
        int i, n = epoll_wait(wrker->efd, events, 127, -1);

        if (n == -1)
            perror("epoll_wait");

        for (i = 0; i < n; i++)
            handle_event(wrker, &events[i]);
    }
}
