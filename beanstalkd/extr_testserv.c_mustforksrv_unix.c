
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int path ;
typedef int name ;
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;


 int assert (int ) ;
 int atexit (int ) ;
 char* ctdir () ;
 int exist (char*) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int kill_srvpid ;
 int make_server_socket (char*,int *) ;
 int printf (char*,char*) ;
 int prot_init () ;
 int puts (char*) ;
 int set_sig_handler () ;
 int snprintf (char*,int,char*,char*) ;
 TYPE_2__ srv ;
 int srv_acquire_wal (TYPE_2__*) ;
 scalar_t__ srvpid ;
 int srvserve (TYPE_2__*) ;
 int twarn (char*) ;

__attribute__((used)) static char *
mustforksrv_unix(void)
{
    static char path[90];
    char name[95];
    snprintf(path, sizeof(path), "%s/socket", ctdir());
    snprintf(name, sizeof(name), "unix:%s", path);
    srv.sock.fd = make_server_socket(name, ((void*)0));
    if (srv.sock.fd == -1) {
        puts("mustforksrv_unix failed");
        exit(1);
    }

    srvpid = fork();
    if (srvpid < 0) {
        twarn("fork");
        exit(1);
    }

    if (srvpid > 0) {

        atexit(kill_srvpid);
        printf("start server socket=%s\n", path);
        assert(exist(path));
        return path;
    }



    set_sig_handler();
    prot_init();

    srv_acquire_wal(&srv);

    srvserve(&srv);
    exit(1);
}
