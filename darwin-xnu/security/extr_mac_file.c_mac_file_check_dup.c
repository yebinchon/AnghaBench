
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,int ,int) ;
 int file_check_dup ;

int
mac_file_check_dup(struct ucred *cred, struct fileglob *fg, int newfd)
{
 int error;

 MAC_CHECK(file_check_dup, cred, fg, fg->fg_label, newfd);
 return (error);
}
