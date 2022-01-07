
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {int ctl_flags; int ctl_disconnect; int ctl_connect; int ctl_name; } ;
typedef scalar_t__ errno_t ;
typedef int ccdbg_control ;


 int CTL_FLAG_PRIVILEGED ;
 int CTL_FLAG_REG_SOCK_STREAM ;
 int LOG_ERR ;
 int TCP_CCDEBUG_CONTROL_NAME ;
 int bzero (struct kern_ctl_reg*,int) ;
 scalar_t__ ctl_register (struct kern_ctl_reg*,int *) ;
 int log (int ,char*) ;
 int strlcpy (int ,int ,int) ;
 int tcp_ccdbg_control_connect ;
 int tcp_ccdbg_control_disconnect ;
 int tcp_ccdbg_ctlref ;

__attribute__((used)) static void
tcp_cc_control_register(void)
{
 struct kern_ctl_reg ccdbg_control;
 errno_t err;

 bzero(&ccdbg_control, sizeof(ccdbg_control));
 strlcpy(ccdbg_control.ctl_name, TCP_CCDEBUG_CONTROL_NAME,
     sizeof(ccdbg_control.ctl_name));
 ccdbg_control.ctl_connect = tcp_ccdbg_control_connect;
 ccdbg_control.ctl_disconnect = tcp_ccdbg_control_disconnect;
 ccdbg_control.ctl_flags |= CTL_FLAG_PRIVILEGED;
 ccdbg_control.ctl_flags |= CTL_FLAG_REG_SOCK_STREAM;

 err = ctl_register(&ccdbg_control, &tcp_ccdbg_ctlref);
 if (err != 0) {
  log(LOG_ERR, "failed to register tcp_cc debug control");
 }
}
