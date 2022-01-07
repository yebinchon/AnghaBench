
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct kevent {int flags; int filter; int * udata; } ;
typedef int int64 ;
typedef int Socket ;


 scalar_t__ EINTR ;


 int EV_EOF ;
 scalar_t__ errno ;
 int kevent (int ,int *,int ,struct kevent*,int,struct timespec*) ;
 int kq ;
 int twarn (char*) ;

int
socknext(Socket **s, int64 timeout)
{
    int r;
    struct kevent ev;
    static struct timespec ts;

    ts.tv_sec = timeout / 1000000000;
    ts.tv_nsec = timeout % 1000000000;
    r = kevent(kq, ((void*)0), 0, &ev, 1, &ts);
    if (r == -1 && errno != EINTR) {
        twarn("kevent");
        return -1;
    }

    if (r > 0) {
        *s = ev.udata;
        if (ev.flags & EV_EOF) {
            return 'h';
        }
        switch (ev.filter) {
        case 129:
            return 'r';
        case 128:
            return 'w';
        }
    }
    return 0;
}
