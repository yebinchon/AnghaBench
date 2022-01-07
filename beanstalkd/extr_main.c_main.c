
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {scalar_t__ user; TYPE_1__ sock; int port; int addr; } ;


 int UNUSED_PARAMETER (int) ;
 int exit (int) ;
 int getpid () ;
 int make_server_socket (int ,int ) ;
 int optparse (TYPE_2__*,char**) ;
 int printf (char*,int) ;
 char* progname ;
 int prot_init () ;
 int set_sig_handlers () ;
 int setlinebuf (int ) ;
 TYPE_2__ srv ;
 int srv_acquire_wal (TYPE_2__*) ;
 int srvserve (TYPE_2__*) ;
 int stdout ;
 int su (scalar_t__) ;
 int twarnx (char*) ;
 scalar_t__ verbose ;

int
main(int argc, char **argv)
{
    UNUSED_PARAMETER(argc);

    progname = argv[0];
    setlinebuf(stdout);
    optparse(&srv, argv+1);

    if (verbose) {
        printf("pid %d\n", getpid());
    }

    int r = make_server_socket(srv.addr, srv.port);
    if (r == -1) {
        twarnx("make_server_socket()");
        exit(111);
    }

    srv.sock.fd = r;

    prot_init();

    if (srv.user)
        su(srv.user);
    set_sig_handlers();

    srv_acquire_wal(&srv);
    srvserve(&srv);
    exit(0);
}
