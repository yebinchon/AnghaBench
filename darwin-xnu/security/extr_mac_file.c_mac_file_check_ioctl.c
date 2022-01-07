
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,int ,int ) ;
 int file_check_ioctl ;

int
mac_file_check_ioctl(struct ucred *cred, struct fileglob *fg, u_int cmd)
{
 int error;

 MAC_CHECK(file_check_ioctl, cred, fg, fg->fg_label, cmd);
 return (error);
}
