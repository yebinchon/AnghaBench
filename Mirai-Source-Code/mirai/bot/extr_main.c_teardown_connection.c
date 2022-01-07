
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int fd_serv ;
 int printf (char*) ;
 int sleep (int) ;

__attribute__((used)) static void teardown_connection(void)
{




    if (fd_serv != -1)
        close(fd_serv);
    fd_serv = -1;
    sleep(1);
}
