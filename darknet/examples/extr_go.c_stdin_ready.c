
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int STDIN_FILENO ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;

int stdin_ready()
{
    fd_set readfds;
    FD_ZERO(&readfds);

    struct timeval timeout;
    timeout.tv_sec = 0;
    timeout.tv_usec = 0;
    FD_SET(STDIN_FILENO, &readfds);

    if (select(1, &readfds, ((void*)0), ((void*)0), &timeout)){
        return 1;
    }
    return 0;
}
