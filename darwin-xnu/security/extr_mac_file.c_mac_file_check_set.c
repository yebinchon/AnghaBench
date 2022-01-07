
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct fileglob {int dummy; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,char*,int) ;
 int file_check_set ;

int
mac_file_check_set(struct ucred *cred, struct fileglob *fg, char *buf,
    int buflen)
{
 int error;

 MAC_CHECK(file_check_set, cred, fg, buf, buflen);
 return (error);
}
