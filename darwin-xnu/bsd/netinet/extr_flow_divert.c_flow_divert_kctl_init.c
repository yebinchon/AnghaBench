
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {char* ctl_name; int ctl_flags; int ctl_rcvd; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_recvsize; int ctl_sendsize; } ;
typedef int ctl_reg ;


 int CTL_FLAG_PRIVILEGED ;
 int CTL_FLAG_REG_EXTENDED ;
 int FDLOG (int ,int *,char*,int) ;
 int FD_CTL_RCVBUFF_SIZE ;
 int FD_CTL_SENDBUFF_SIZE ;
 int FLOW_DIVERT_CONTROL_NAME ;
 int LOG_ERR ;
 int ctl_register (struct kern_ctl_reg*,int *) ;
 int flow_divert_kctl_connect ;
 int flow_divert_kctl_disconnect ;
 int flow_divert_kctl_rcvd ;
 int flow_divert_kctl_send ;
 int g_flow_divert_kctl_ref ;
 int memset (struct kern_ctl_reg*,int ,int) ;
 int nil_pcb ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int
flow_divert_kctl_init(void)
{
 struct kern_ctl_reg ctl_reg;
 int result;

 memset(&ctl_reg, 0, sizeof(ctl_reg));

 strlcpy(ctl_reg.ctl_name, FLOW_DIVERT_CONTROL_NAME, sizeof(ctl_reg.ctl_name));
 ctl_reg.ctl_name[sizeof(ctl_reg.ctl_name)-1] = '\0';
 ctl_reg.ctl_flags = CTL_FLAG_PRIVILEGED | CTL_FLAG_REG_EXTENDED;
 ctl_reg.ctl_sendsize = FD_CTL_SENDBUFF_SIZE;
 ctl_reg.ctl_recvsize = FD_CTL_RCVBUFF_SIZE;

 ctl_reg.ctl_connect = flow_divert_kctl_connect;
 ctl_reg.ctl_disconnect = flow_divert_kctl_disconnect;
 ctl_reg.ctl_send = flow_divert_kctl_send;
 ctl_reg.ctl_rcvd = flow_divert_kctl_rcvd;

 result = ctl_register(&ctl_reg, &g_flow_divert_kctl_ref);

 if (result) {
  FDLOG(LOG_ERR, &nil_pcb, "flow_divert_kctl_init - ctl_register failed: %d\n", result);
  return result;
 }

 return 0;
}
