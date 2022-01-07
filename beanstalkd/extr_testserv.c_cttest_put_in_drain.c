
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int SIGUSR1 ;
 int ckresp (int,char*) ;
 int enter_drain_mode (int ) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_put_in_drain()
{
    enter_drain_mode(SIGUSR1);
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 0 0 1 1\r\n");
    mustsend(fd, "x\r\n");
    ckresp(fd, "DRAINING\r\n");
}
