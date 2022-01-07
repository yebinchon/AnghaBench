
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;


 int atexit (int ) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int getsockname (int,struct sockaddr*,int *) ;
 int kill_srvpid ;
 int make_server_socket (char*,char*) ;
 int ntohs (int ) ;
 int printf (char*,int,scalar_t__) ;
 int prot_init () ;
 int puts (char*) ;
 int set_sig_handler () ;
 TYPE_2__ srv ;
 int srv_acquire_wal (TYPE_2__*) ;
 scalar_t__ srvpid ;
 int srvserve (TYPE_2__*) ;
 int twarn (char*) ;

__attribute__((used)) static int
mustforksrv(void)
{
    struct sockaddr_in addr;

    srv.sock.fd = make_server_socket("127.0.0.1", "0");
    if (srv.sock.fd == -1) {
        puts("mustforksrv failed");
        exit(1);
    }

    size_t len = sizeof(addr);
    int r = getsockname(srv.sock.fd, (struct sockaddr *)&addr, (socklen_t *)&len);
    if (r == -1 || len > sizeof(addr)) {
        puts("mustforksrv failed");
        exit(1);
    }

    int port = ntohs(addr.sin_port);
    srvpid = fork();
    if (srvpid < 0) {
        twarn("fork");
        exit(1);
    }

    if (srvpid > 0) {

        atexit(kill_srvpid);
        printf("start server port=%d pid=%d\n", port, srvpid);
        return port;
    }



    set_sig_handler();
    prot_init();

    srv_acquire_wal(&srv);

    srvserve(&srv);
    exit(1);
}
