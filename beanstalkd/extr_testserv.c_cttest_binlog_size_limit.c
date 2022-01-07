
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dir; int use; int filesize; int wantsync; scalar_t__ syncrate; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;


 int SERVER () ;
 int assertf (int,char*,int,int) ;
 int ckresp (int,char*) ;
 int ctdir () ;
 int exist (char*) ;
 int filesize (char*) ;
 char* fmtalloc (char*,int) ;
 int free (char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;
 int size ;
 TYPE_2__ srv ;

void
cttest_binlog_size_limit()
{
    int i = 0;
    int gotsize;

    size = 4096;
    srv.wal.dir = ctdir();
    srv.wal.use = 1;
    srv.wal.filesize = size;
    srv.wal.syncrate = 0;
    srv.wal.wantsync = 1;

    int port = SERVER();
    int fd = mustdiallocal(port);
    char *b2 = fmtalloc("%s/binlog.2", ctdir());
    while (!exist(b2)) {
        char *exp = fmtalloc("INSERTED %d\r\n", ++i);
        mustsend(fd, "put 0 0 100 50\r\n");
        mustsend(fd, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n");
        ckresp(fd, exp);
        free(exp);
    }

    char *b1 = fmtalloc("%s/binlog.1", ctdir());
    gotsize = filesize(b1);
    assertf(gotsize == size, "binlog.1 %d != %d", gotsize, size);
    gotsize = filesize(b2);
    assertf(gotsize == size, "binlog.2 %d != %d", gotsize, size);
    free(b1);
    free(b2);
}
