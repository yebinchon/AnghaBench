
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_delete_reserved_by_other()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 0 0 1 1\r\n");
    mustsend(fd, "a\r\n");
    ckresp(fd, "INSERTED 1\r\n");

    int o = mustdiallocal(port);
    mustsend(o, "reserve\r\n");
    ckresp(o, "RESERVED 1 1\r\n");
    ckresp(o, "a\r\n");

    mustsend(fd, "delete 1\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
}
