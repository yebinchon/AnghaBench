
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_unknown_command()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "nont10knowncommand\r\n");
    ckresp(fd, "UNKNOWN_COMMAND\r\n");
}
