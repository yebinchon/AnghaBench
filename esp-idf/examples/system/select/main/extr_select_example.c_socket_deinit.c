
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int socket_fd ;

__attribute__((used)) static void socket_deinit(void)
{
    close(socket_fd);
    socket_fd = -1;
}
