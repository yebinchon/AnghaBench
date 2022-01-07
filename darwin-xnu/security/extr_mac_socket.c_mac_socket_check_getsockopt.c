
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int dummy; } ;
struct socket {int so_label; } ;
typedef int socket_t ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int ,int ,struct sockopt*) ;
 int mac_socket_enforce ;
 int socket_check_getsockopt ;

int mac_socket_check_getsockopt(kauth_cred_t cred, struct socket *so,
    struct sockopt *sopt)
{
 int error;







 MAC_CHECK(socket_check_getsockopt, cred,
    (socket_t)so, so->so_label, sopt);
 return (error);
}
