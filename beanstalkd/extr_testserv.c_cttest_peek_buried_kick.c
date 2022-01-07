
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_peek_buried_kick()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 0 0 1 1\r\n");
    mustsend(fd, "A\r\n");
    ckresp(fd, "INSERTED 1\r\n");


    mustsend(fd, "bury 1 0\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
    mustsend(fd, "peek-buried\r\n");
    ckresp(fd, "NOT_FOUND\r\n");

    mustsend(fd, "reserve-with-timeout 0\r\n");
    ckresp(fd, "RESERVED 1 1\r\n");
    ckresp(fd, "A\r\n");


    mustsend(fd, "bury 1 0\r\n");
    ckresp(fd, "BURIED\r\n");
    mustsend(fd, "peek-buried\r\n");
    ckresp(fd, "FOUND 1 1\r\n");
    ckresp(fd, "A\r\n");


    mustsend(fd, "kick 1\r\n");
    ckresp(fd, "KICKED 1\r\n");
    mustsend(fd, "peek-buried\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
    mustsend(fd, "peek-ready\r\n");
    ckresp(fd, "FOUND 1 1\r\n");
    ckresp(fd, "A\r\n");


    mustsend(fd, "kick 1\r\n");
    ckresp(fd, "KICKED 0\r\n");
}
