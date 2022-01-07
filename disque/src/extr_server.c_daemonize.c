
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 int dup2 (int,int) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int open (char*,int ,int ) ;
 int setsid () ;

void daemonize(void) {
    int fd;

    if (fork() != 0) exit(0);
    setsid();




    if ((fd = open("/dev/null", O_RDWR, 0)) != -1) {
        dup2(fd, STDIN_FILENO);
        dup2(fd, STDOUT_FILENO);
        dup2(fd, STDERR_FILENO);
        if (fd > STDERR_FILENO) close(fd);
    }
}
