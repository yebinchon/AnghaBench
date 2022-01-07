
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {int ctl_sendsize; int ctl_recvsize; int ctl_getopt; int ctl_setopt; int ctl_rcvd; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_flags; scalar_t__* ctl_name; } ;
typedef int kern_ctl ;
typedef scalar_t__ errno_t ;


 int CTL_FLAG_PRIVILEGED ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,scalar_t__) ;
 int NECP_CONTROL_NAME ;
 int OSMT_DEFAULT ;
 int OSMalloc_Tagalloc (int ,int ) ;
 int bzero (struct kern_ctl_reg*,int) ;
 scalar_t__ ctl_register (struct kern_ctl_reg*,int *) ;
 scalar_t__ mbuf_tag_id_find (int ,int *) ;
 int necp_ctl_connect ;
 int necp_ctl_disconnect ;
 int necp_ctl_getopt ;
 int necp_ctl_rcvd ;
 int necp_ctl_send ;
 int necp_ctl_setopt ;
 int necp_family ;
 int necp_kctlref ;
 int necp_malloc_tag ;
 int strlcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static errno_t
necp_register_control(void)
{
 struct kern_ctl_reg kern_ctl;
 errno_t result = 0;


 necp_malloc_tag = OSMalloc_Tagalloc(NECP_CONTROL_NAME, OSMT_DEFAULT);


 result = mbuf_tag_id_find(NECP_CONTROL_NAME, &necp_family);
 if (result != 0) {
  NECPLOG(LOG_ERR, "mbuf_tag_id_find_internal failed: %d", result);
  return (result);
 }

 bzero(&kern_ctl, sizeof(kern_ctl));
 strlcpy(kern_ctl.ctl_name, NECP_CONTROL_NAME, sizeof(kern_ctl.ctl_name));
 kern_ctl.ctl_name[sizeof(kern_ctl.ctl_name) - 1] = 0;
 kern_ctl.ctl_flags = CTL_FLAG_PRIVILEGED;
 kern_ctl.ctl_sendsize = 64 * 1024;
 kern_ctl.ctl_recvsize = 64 * 1024;
 kern_ctl.ctl_connect = necp_ctl_connect;
 kern_ctl.ctl_disconnect = necp_ctl_disconnect;
 kern_ctl.ctl_send = necp_ctl_send;
 kern_ctl.ctl_rcvd = necp_ctl_rcvd;
 kern_ctl.ctl_setopt = necp_ctl_setopt;
 kern_ctl.ctl_getopt = necp_ctl_getopt;

 result = ctl_register(&kern_ctl, &necp_kctlref);
 if (result != 0) {
  NECPLOG(LOG_ERR, "ctl_register failed: %d", result);
  return (result);
 }

 return (0);
}
