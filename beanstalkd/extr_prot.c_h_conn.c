
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int const fd; } ;
struct TYPE_11__ {int halfclosed; scalar_t__ state; int cmd_read; int cmd; int cmd_len; TYPE_1__ sock; } ;
typedef TYPE_2__ Conn ;


 scalar_t__ STATE_CLOSE ;
 int close (int const) ;
 scalar_t__ cmd_data_ready (TYPE_2__*) ;
 int conn_process_io (TYPE_2__*) ;
 int connclose (TYPE_2__*) ;
 int dispatch_cmd (TYPE_2__*) ;
 int epollq_apply () ;
 int epollq_rmconn (TYPE_2__*) ;
 int fill_extra_data (TYPE_2__*) ;
 int scan_line_end (int ,int ) ;
 int twarnx (char*) ;

__attribute__((used)) static void
h_conn(const int fd, const short which, Conn *c)
{
    if (fd != c->sock.fd) {
        twarnx("Argh! event fd doesn't match conn fd.");
        close(fd);
        connclose(c);
        epollq_apply();
        return;
    }

    if (which == 'h') {
        c->halfclosed = 1;
    }

    conn_process_io(c);
    while (cmd_data_ready(c) && (c->cmd_len = scan_line_end(c->cmd, c->cmd_read))) {
        dispatch_cmd(c);
        fill_extra_data(c);
    }
    if (c->state == STATE_CLOSE) {
        epollq_rmconn(c);
        connclose(c);
    }
    epollq_apply();
}
