
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int fd_set ;
struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int ConnectionNumber (int ) ;
 scalar_t__ EINTR ;
 int FD_SET (int const,int *) ;
 int FD_ZERO (int *) ;
 TYPE_2__ _glfw ;
 scalar_t__ errno ;
 int select (int const,int *,int *,int *,struct timeval*) ;

void selectDisplayConnection(struct timeval* timeout)
{
    fd_set fds;
    int result;
    const int fd = ConnectionNumber(_glfw.x11.display);

    FD_ZERO(&fds);
    FD_SET(fd, &fds);







    do
    {
        result = select(fd + 1, &fds, ((void*)0), ((void*)0), timeout);
    }
    while (result == -1 && errno == EINTR && timeout == ((void*)0));
}
