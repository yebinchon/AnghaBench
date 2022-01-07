
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int added; int fd; } ;
typedef TYPE_1__ Socket ;


 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int PORT_SOURCE_FD ;
 int port_associate (int ,int ,int ,int,void*) ;
 int port_dissociate (int ,int ,int ) ;
 int portfd ;

int
sockwant(Socket *s, int rw)
{
    int events = 0;

    if (rw) {
        switch (rw) {
        case 'r':
            events |= POLLIN;
            break;
        case 'w':
            events |= POLLOUT;
            break;
        }
    }

    events |= POLLPRI;

    if (!s->added && !rw) {
        return 0;
    } else if (!s->added && rw) {
        s->added = 1;
        return port_associate(portfd, PORT_SOURCE_FD, s->fd, events, (void *)s);
    } else if (!rw) {
        return port_dissociate(portfd, PORT_SOURCE_FD, s->fd);
    } else {
        port_dissociate(portfd, PORT_SOURCE_FD, s->fd);
        return port_associate(portfd, PORT_SOURCE_FD, s->fd, events, (void *)s);
    }
}
