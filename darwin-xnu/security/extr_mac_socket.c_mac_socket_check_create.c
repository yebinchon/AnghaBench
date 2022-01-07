
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int,int,int) ;
 int mac_socket_enforce ;
 int socket_check_create ;

int
mac_socket_check_create(kauth_cred_t cred, int domain, int type, int protocol)
{
 int error;







 MAC_CHECK(socket_check_create, cred, domain, type, protocol);
 return (error);
}
