
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use; int dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;


 int SERVER () ;
 int ckresp (int,char*) ;
 int ctdir () ;
 int job_data_size_limit ;
 int kill_srvpid () ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;
 TYPE_2__ srv ;

void
cttest_binlog_empty_exit()
{
    srv.wal.dir = ctdir();
    srv.wal.use = 1;
    job_data_size_limit = 10;

    int port = SERVER();
    kill_srvpid();

    port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 0 0 0 0\r\n");
    mustsend(fd, "\r\n");
    ckresp(fd, "INSERTED 1\r\n");
}
