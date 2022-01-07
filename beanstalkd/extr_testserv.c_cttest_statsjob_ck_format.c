
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_statsjob_ck_format()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "stats-job 111ABC\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "stats-job 111 222\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "stats-job 111\r\n");
    ckresp(fd, "NOT_FOUND\r\n");
}
