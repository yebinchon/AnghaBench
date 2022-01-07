
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_CHECK (int ,struct ucred*) ;
 int file_check_create ;

int
mac_file_check_create(struct ucred *cred)
{
 int error;

 MAC_CHECK(file_check_create, cred);
 return (error);
}
