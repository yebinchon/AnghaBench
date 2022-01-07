
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_delete_bad_format()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "delete 18446744073709551616\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "delete 184467440737095516160000000000000000000000000000\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "delete foo111\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "delete 111foo\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
}
