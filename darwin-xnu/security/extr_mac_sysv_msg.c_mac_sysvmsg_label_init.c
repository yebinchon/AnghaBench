
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int label; } ;


 int mac_sysv_msgmsg_label_alloc () ;

void
mac_sysvmsg_label_init(struct msg *msgptr)
{

 msgptr->label = mac_sysv_msgmsg_label_alloc();
}
