
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_unpause_tube()
{
    int fd0, fd1;

    int port = SERVER();
    fd0 = mustdiallocal(port);
    fd1 = mustdiallocal(port);

    mustsend(fd0, "put 0 0 0 0\r\n");
    mustsend(fd0, "\r\n");
    ckresp(fd0, "INSERTED 1\r\n");

    mustsend(fd0, "pause-tube default 86400\r\n");
    ckresp(fd0, "PAUSED\r\n");

    mustsend(fd1, "reserve\r\n");

    mustsend(fd0, "pause-tube default 0\r\n");
    ckresp(fd0, "PAUSED\r\n");



    ckresp(fd1, "RESERVED 1 0\r\n");
    ckresp(fd1, "\r\n");
}
