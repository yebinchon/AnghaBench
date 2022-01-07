
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {int ctl_sendsize; int ctl_recvsize; int ctl_getopt; int ctl_setopt; int ctl_rcvd; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_flags; scalar_t__* ctl_name; } ;
typedef int kern_ctl ;
typedef scalar_t__ errno_t ;


 int CTL_FLAG_PRIVILEGED ;
 int LOG_ERR ;
 int NETAGENTLOG (int ,char*,scalar_t__) ;
 int NETAGENT_CONTROL_NAME ;
 int OSMT_DEFAULT ;
 int OSMalloc_Tagalloc (int ,int ) ;
 int bzero (struct kern_ctl_reg*,int) ;
 scalar_t__ ctl_register (struct kern_ctl_reg*,int *) ;
 scalar_t__ mbuf_tag_id_find (int ,int *) ;
 int netagent_ctl_connect ;
 int netagent_ctl_disconnect ;
 int netagent_ctl_getopt ;
 int netagent_ctl_rcvd ;
 int netagent_ctl_send ;
 int netagent_ctl_setopt ;
 int netagent_family ;
 int netagent_kctlref ;
 int netagent_malloc_tag ;
 int strlcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static errno_t
netagent_register_control(void)
{
 struct kern_ctl_reg kern_ctl;
 errno_t result = 0;


 netagent_malloc_tag = OSMalloc_Tagalloc(NETAGENT_CONTROL_NAME, OSMT_DEFAULT);


 result = mbuf_tag_id_find(NETAGENT_CONTROL_NAME, &netagent_family);
 if (result != 0) {
  NETAGENTLOG(LOG_ERR, "mbuf_tag_id_find_internal failed: %d", result);
  return (result);
 }

 bzero(&kern_ctl, sizeof(kern_ctl));
 strlcpy(kern_ctl.ctl_name, NETAGENT_CONTROL_NAME, sizeof(kern_ctl.ctl_name));
 kern_ctl.ctl_name[sizeof(kern_ctl.ctl_name) - 1] = 0;
 kern_ctl.ctl_flags = CTL_FLAG_PRIVILEGED;
 kern_ctl.ctl_sendsize = 64 * 1024;
 kern_ctl.ctl_recvsize = 64 * 1024;
 kern_ctl.ctl_connect = netagent_ctl_connect;
 kern_ctl.ctl_disconnect = netagent_ctl_disconnect;
 kern_ctl.ctl_send = netagent_ctl_send;
 kern_ctl.ctl_rcvd = netagent_ctl_rcvd;
 kern_ctl.ctl_setopt = netagent_ctl_setopt;
 kern_ctl.ctl_getopt = netagent_ctl_getopt;

 result = ctl_register(&kern_ctl, &netagent_kctlref);
 if (result != 0) {
  NETAGENTLOG(LOG_ERR, "ctl_register failed: %d", result);
  return (result);
 }

 return (0);
}
