
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_peek_delayed()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "peek-delayed\r\n");
    ckresp(fd, "NOT_FOUND\r\n");

    mustsend(fd, "put 0 0 1 1\r\n");
    mustsend(fd, "A\r\n");
    ckresp(fd, "INSERTED 1\r\n");
    mustsend(fd, "put 0 99 1 1\r\n");
    mustsend(fd, "B\r\n");
    ckresp(fd, "INSERTED 2\r\n");
    mustsend(fd, "put 0 1 1 1\r\n");
    mustsend(fd, "C\r\n");
    ckresp(fd, "INSERTED 3\r\n");

    mustsend(fd, "peek-delayed\r\n");
    ckresp(fd, "FOUND 3 1\r\n");
    ckresp(fd, "C\r\n");

    mustsend(fd, "delete 3\r\n");
    ckresp(fd, "DELETED\r\n");

    mustsend(fd, "peek-delayed\r\n");
    ckresp(fd, "FOUND 2 1\r\n");
    ckresp(fd, "B\r\n");

    mustsend(fd, "delete 2\r\n");
    ckresp(fd, "DELETED\r\n");

    mustsend(fd, "peek-delayed\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
}
