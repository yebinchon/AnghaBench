
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;
typedef int io_object_t ;


 int MAC_CHECK (int ,int ,int ,unsigned int) ;
 int iokit_check_open ;

int
mac_iokit_check_open(kauth_cred_t cred, io_object_t user_client, unsigned int user_client_type)
{
 int error;

 MAC_CHECK(iokit_check_open, cred, user_client, user_client_type);
 return (error);
}
