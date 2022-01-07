
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct kevent {void* filter; TYPE_1__* udata; int flags; int data; int fflags; int ident; int member_0; } ;
struct TYPE_3__ {void* added; int fd; } ;
typedef TYPE_1__ Socket ;


 void* EVFILT_READ ;
 void* EVFILT_WRITE ;
 int EV_ADD ;
 int EV_DELETE ;
 int Infinity ;
 int NOTE_LOWAT ;
 int kevent (int ,struct kevent*,int,int *,int ,struct timespec*) ;
 int kq ;

int
sockwant(Socket *s, int rw)
{
    int n = 0;
    struct kevent evs[2] = {{0}};
    struct kevent *ev = evs;
    struct timespec ts = {.tv_sec = 0, .tv_nsec = 0};

    if (s->added) {
        ev->ident = s->fd;
        ev->filter = s->added;
        ev->flags = EV_DELETE;
        ev++;
        n++;
    }

    if (rw) {
        ev->ident = s->fd;
        switch (rw) {
        case 'r':
            ev->filter = EVFILT_READ;
            break;
        case 'w':
            ev->filter = EVFILT_WRITE;
            break;
        default:

            ev->filter = EVFILT_READ;
            ev->fflags = NOTE_LOWAT;
            ev->data = Infinity;
        }
        ev->flags = EV_ADD;
        ev->udata = s;
        s->added = ev->filter;
        ev++;
        n++;
    }

    return kevent(kq, evs, n, ((void*)0), 0, &ts);
}
