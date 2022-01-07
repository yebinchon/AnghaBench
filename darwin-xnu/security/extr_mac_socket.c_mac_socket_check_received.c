
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_label; } ;
struct sockaddr {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct socket*,int ,struct sockaddr*) ;
 int mac_socket_enforce ;
 int socket_check_received ;

int
mac_socket_check_received(kauth_cred_t cred, struct socket *so, struct sockaddr *saddr)
{
 int error;







 MAC_CHECK(socket_check_received, cred,
    so, so->so_label, saddr);
 return (error);
}
