
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_PERFORM (int ,struct ucred*,struct ucred*) ;
 int cred_label_associate ;

void
mac_cred_label_associate(struct ucred *parent_cred, struct ucred *child_cred)
{

 MAC_PERFORM(cred_label_associate, parent_cred, child_cred);
}
