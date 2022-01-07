
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_scope_id; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; } ;
typedef int src_addr ;
typedef int socklen_t ;
typedef int fd_set ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
typedef TYPE_1__ TIMEVAL ;


 scalar_t__ AF_INET6 ;
 scalar_t__ EINTR ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int POLLIN ;
 scalar_t__ errno ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int poll (struct pollfd*,int,int) ;
 int printf (char*,int) ;
 scalar_t__ recv (int,char*,int,int ) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int select (int ,int *,int *,int *,TYPE_1__*) ;

int
receivedata(int socket,
            char * data, int length,
            int timeout, unsigned int * scope_id)
{




    int n;


    struct pollfd fds[1];



        fds[0].fd = socket;
        fds[0].events = POLLIN;
        n = poll(fds, 1, timeout);



    if(n < 0)
        return -1;

    if(n == 0)
        return 0;
 n = (int)recv(socket, data, length, 0);
 return n;
}
