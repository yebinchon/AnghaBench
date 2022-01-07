
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_touch_not_found()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "touch 1\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
    mustsend(fd, "touch 100000000000000\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
}
