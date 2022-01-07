
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SERVER_UNIX () ;
 int ckresp (int,char*) ;
 int mustdialunix (char*) ;
 int mustsend (int,char*) ;
 int unlink (char*) ;

void
cttest_peek_ok_unix()
{
    char *name = SERVER_UNIX();
    int fd = mustdialunix(name);
    mustsend(fd, "put 0 0 1 1\r\n");
    mustsend(fd, "a\r\n");
    ckresp(fd, "INSERTED 1\r\n");

    mustsend(fd, "peek 1\r\n");
    ckresp(fd, "FOUND 1 1\r\n");
    ckresp(fd, "a\r\n");

    unlink(name);
}
