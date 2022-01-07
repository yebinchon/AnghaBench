
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_long_t ;
struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,int ,int,int ) ;
 int file_check_fcntl ;

int
mac_file_check_fcntl(struct ucred *cred, struct fileglob *fg, int cmd,
    user_long_t arg)
{
 int error;

 MAC_CHECK(file_check_fcntl, cred, fg, fg->fg_label, cmd, arg);
 return (error);
}
