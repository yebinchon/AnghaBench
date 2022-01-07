
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int use; int filesize; int syncrate; int wantsync; int dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;


 int JOB_DATA_SIZE_LIMIT_MAX ;
 int SERVER () ;
 int ckresp (int,char*) ;
 int ckrespsub (int,char*) ;
 int ctdir () ;
 int ctresettimer () ;
 int ctsetbytes (int) ;
 int ctstoptimer () ;
 int job_data_size_limit ;
 int memset (char*,char,int) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__ srv ;

__attribute__((used)) static void
bench_put_delete_size(int n, int size, int walsize, int sync, int64 syncrate_ms)
{
    if (walsize > 0) {
        srv.wal.dir = ctdir();
        srv.wal.use = 1;
        srv.wal.filesize = walsize;
        srv.wal.syncrate = syncrate_ms * 1000000;
        srv.wal.wantsync = sync;
    }

    job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
    int port = SERVER();
    int fd = mustdiallocal(port);
    char buf[50], put[50];
    char body[size+1];
    memset(body, 'a', size);
    body[size] = 0;
    ctsetbytes(size);
    sprintf(put, "put 0 0 0 %d\r\n", size);
    ctresettimer();
    int i;
    for (i = 0; i < n; i++) {
        mustsend(fd, put);
        mustsend(fd, body);
        mustsend(fd, "\r\n");
        ckrespsub(fd, "INSERTED ");
        sprintf(buf, "delete %d\r\n", i + 1);
        mustsend(fd, buf);
        ckresp(fd, "DELETED\r\n");
    }
    ctstoptimer();
}
