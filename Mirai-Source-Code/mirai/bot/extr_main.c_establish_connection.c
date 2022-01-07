
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int AF_INET ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int TRUE ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int fd_serv ;
 int pending_connection ;
 int printf (char*,...) ;
 int resolve_func () ;
 int socket (int ,int ,int ) ;
 int srv_addr ;

__attribute__((used)) static void establish_connection(void)
{




    if ((fd_serv = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {



        return;
    }

    fcntl(fd_serv, F_SETFL, O_NONBLOCK | fcntl(fd_serv, F_GETFL, 0));


    if (resolve_func != ((void*)0))
        resolve_func();

    pending_connection = TRUE;
    connect(fd_serv, (struct sockaddr *)&srv_addr, sizeof (struct sockaddr_in));
}
