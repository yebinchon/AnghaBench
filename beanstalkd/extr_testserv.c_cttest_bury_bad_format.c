
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_bury_bad_format()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "bury 111abc 2\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "bury 111\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "bury 111 222abc\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
}
