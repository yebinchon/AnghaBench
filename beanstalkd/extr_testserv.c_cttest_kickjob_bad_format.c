
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_kickjob_bad_format()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "kick-job a111\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "kick-job 111a\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    mustsend(fd, "kick-job !@#!@#\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
}
