
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct sockaddr {int dummy; } ;
typedef int socket_t ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int ,int ,struct sockaddr*) ;
 int mac_socket_enforce ;
 int socket_check_connect ;

int
mac_socket_check_connect(kauth_cred_t cred, struct socket *so,
    struct sockaddr *sockaddr)
{
 int error;







 MAC_CHECK(socket_check_connect, cred,
    (socket_t)so, so->so_label,
    sockaddr);
 return (error);
}
