
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_PERFORM (int ,struct ucred*,struct fileglob*,int ) ;
 int file_label_associate ;

void
mac_file_label_associate(struct ucred *cred, struct fileglob *fg)
{

 MAC_PERFORM(file_label_associate, cred, fg, fg->fg_label);
}
