
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct fileglob {int dummy; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,char*,int) ;
 int file_check_get ;

int
mac_file_check_get(struct ucred *cred, struct fileglob *fg, char *elements,
    int len)
{
 int error;

 MAC_CHECK(file_check_get, cred, fg, elements, len);
 return (error);
}
