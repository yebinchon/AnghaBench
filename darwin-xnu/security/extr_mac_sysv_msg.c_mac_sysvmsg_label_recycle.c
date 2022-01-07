
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int label; } ;


 int MAC_PERFORM (int ,int ) ;
 int sysvmsg_label_recycle ;

void
mac_sysvmsg_label_recycle(struct msg *msgptr)
{

 MAC_PERFORM(sysvmsg_label_recycle, msgptr->label);
}
