
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
 int socket_check_bind ;

int
mac_socket_check_bind(kauth_cred_t ucred, struct socket *so,
    struct sockaddr *sockaddr)
{
 int error;







 MAC_CHECK(socket_check_bind, ucred,
    (socket_t)so, so->so_label, sockaddr);
 return (error);
}
