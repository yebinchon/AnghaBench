
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {int ctl_flags; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_name; } ;
typedef int mptcp_kern_ctl ;


 int CTL_FLAG_PRIVILEGED ;
 int MPTCP_KERN_CTL_NAME ;
 int bzero (struct kern_ctl_reg*,int) ;
 int ctl_register (struct kern_ctl_reg*,int *) ;
 int mptcp_kern_ctrl_ref ;
 int mptcp_symptoms_ctl_connect ;
 int mptcp_symptoms_ctl_disconnect ;
 int mptcp_symptoms_ctl_send ;
 int strlcpy (int ,int ,int) ;

void
mptcp_control_register(void)
{

 struct kern_ctl_reg mptcp_kern_ctl;

 bzero(&mptcp_kern_ctl, sizeof(mptcp_kern_ctl));
 strlcpy(mptcp_kern_ctl.ctl_name, MPTCP_KERN_CTL_NAME,
     sizeof(mptcp_kern_ctl.ctl_name));
 mptcp_kern_ctl.ctl_connect = mptcp_symptoms_ctl_connect;
 mptcp_kern_ctl.ctl_disconnect = mptcp_symptoms_ctl_disconnect;
 mptcp_kern_ctl.ctl_send = mptcp_symptoms_ctl_send;
 mptcp_kern_ctl.ctl_flags = CTL_FLAG_PRIVILEGED;

 (void)ctl_register(&mptcp_kern_ctl, &mptcp_kern_ctrl_ref);
}
