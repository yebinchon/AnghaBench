
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,int ) ;
 int file_check_receive ;

int
mac_file_check_receive(struct ucred *cred, struct fileglob *fg)
{
 int error;

 MAC_CHECK(file_check_receive, cred, fg, fg->fg_label);
 return (error);
}
