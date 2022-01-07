
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_11__ {int fd; scalar_t__ f; TYPE_3__* x; } ;
struct TYPE_8__ {int setpos; int less; } ;
struct TYPE_10__ {TYPE_5__ sock; TYPE_1__ conns; } ;
struct TYPE_9__ {int x; int (* f ) (int ,int) ;} ;
typedef TYPE_2__ Socket ;
typedef TYPE_3__ Server ;
typedef scalar_t__ Handle ;


 int conn_less ;
 int conn_setpos ;
 int exit (int) ;
 int listen (int ,int) ;
 int prottick (TYPE_3__*) ;
 int sockinit () ;
 int socknext (TYPE_2__**,int ) ;
 int sockwant (TYPE_5__*,char) ;
 scalar_t__ srvaccept ;
 int stub1 (int ,int) ;
 int twarn (char*) ;
 int twarnx (char*) ;

void
srvserve(Server *s)
{
    int r;
    Socket *sock;

    if (sockinit() == -1) {
        twarnx("sockinit");
        exit(1);
    }

    s->sock.x = s;
    s->sock.f = (Handle)srvaccept;
    s->conns.less = conn_less;
    s->conns.setpos = conn_setpos;

    r = listen(s->sock.fd, 1024);
    if (r == -1) {
        twarn("listen");
        return;
    }

    r = sockwant(&s->sock, 'r');
    if (r == -1) {
        twarn("sockwant");
        exit(2);
    }


    for (;;) {
        int64 period = prottick(s);

        int rw = socknext(&sock, period);
        if (rw == -1) {
            twarnx("socknext");
            exit(1);
        }

        if (rw) {
            sock->f(sock->x, rw);
        }
    }
}
