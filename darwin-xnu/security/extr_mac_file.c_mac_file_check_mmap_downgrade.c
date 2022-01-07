
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_PERFORM (int ,struct ucred*,struct fileglob*,int ,int*) ;
 int file_check_mmap_downgrade ;

void
mac_file_check_mmap_downgrade(struct ucred *cred, struct fileglob *fg,
    int *prot)
{
 int result = *prot;

 MAC_PERFORM(file_check_mmap_downgrade, cred, fg, fg->fg_label,
     &result);

 *prot = result;
}
