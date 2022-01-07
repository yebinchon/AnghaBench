
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utun_pcb {int dummy; } ;
struct kern_ctl_reg {int ctl_flags; int ctl_sendsize; int ctl_recvsize; int ctl_rcvd; int ctl_getopt; int ctl_setopt; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_bind; scalar_t__* ctl_name; } ;
typedef int kern_ctl ;
typedef scalar_t__ errno_t ;


 int CTL_FLAG_PRIVILEGED ;
 int CTL_FLAG_REG_EXTENDED ;
 scalar_t__ ENOMEM ;
 int PF_INET ;
 int PF_INET6 ;
 int TAILQ_INIT (int *) ;
 int UTUN_CONTROL_NAME ;
 int UTUN_PCB_ZONE_MAX ;
 int UTUN_PCB_ZONE_NAME ;
 int bzero (struct kern_ctl_reg*,int) ;
 int ctl_deregister (int ) ;
 scalar_t__ ctl_register (struct kern_ctl_reg*,int *) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ mbuf_tag_id_find (int ,int*) ;
 int printf (char*,...) ;
 scalar_t__ proto_register_plumber (int ,int,int ,int *) ;
 int proto_unregister_plumber (int ,int) ;
 int strlcpy (scalar_t__*,int ,int) ;
 int utun_attach_proto ;
 int utun_ctl_bind ;
 int utun_ctl_connect ;
 int utun_ctl_disconnect ;
 int utun_ctl_getopt ;
 int utun_ctl_rcvd ;
 int utun_ctl_send ;
 int utun_ctl_setopt ;
 int utun_family ;
 int utun_head ;
 int utun_kctlref ;
 int utun_lck_attr ;
 int utun_lck_grp ;
 int utun_lck_grp_attr ;
 int utun_lock ;
 int utun_pcb_size ;
 int * utun_pcb_zone ;
 int utun_register_nexus () ;
 int * zinit (int,int,int ,int ) ;

errno_t
utun_register_control(void)
{
 struct kern_ctl_reg kern_ctl;
 errno_t result = 0;


 result = mbuf_tag_id_find(UTUN_CONTROL_NAME, &utun_family);
 if (result != 0) {
  printf("utun_register_control - mbuf_tag_id_find_internal failed: %d\n", result);
  return result;
 }

 utun_pcb_size = sizeof(struct utun_pcb);
 utun_pcb_zone = zinit(utun_pcb_size,
        UTUN_PCB_ZONE_MAX * utun_pcb_size,
        0, UTUN_PCB_ZONE_NAME);
 if (utun_pcb_zone == ((void*)0)) {
  printf("utun_register_control - zinit(utun_pcb) failed");
  return ENOMEM;
 }





 TAILQ_INIT(&utun_head);

 bzero(&kern_ctl, sizeof(kern_ctl));
 strlcpy(kern_ctl.ctl_name, UTUN_CONTROL_NAME, sizeof(kern_ctl.ctl_name));
 kern_ctl.ctl_name[sizeof(kern_ctl.ctl_name) - 1] = 0;
 kern_ctl.ctl_flags = CTL_FLAG_PRIVILEGED | CTL_FLAG_REG_EXTENDED;
 kern_ctl.ctl_sendsize = 512 * 1024;
 kern_ctl.ctl_recvsize = 512 * 1024;
 kern_ctl.ctl_bind = utun_ctl_bind;
 kern_ctl.ctl_connect = utun_ctl_connect;
 kern_ctl.ctl_disconnect = utun_ctl_disconnect;
 kern_ctl.ctl_send = utun_ctl_send;
 kern_ctl.ctl_setopt = utun_ctl_setopt;
 kern_ctl.ctl_getopt = utun_ctl_getopt;
 kern_ctl.ctl_rcvd = utun_ctl_rcvd;

 result = ctl_register(&kern_ctl, &utun_kctlref);
 if (result != 0) {
  printf("utun_register_control - ctl_register failed: %d\n", result);
  return result;
 }


 if ((result = proto_register_plumber(PF_INET, utun_family,
           utun_attach_proto, ((void*)0))) != 0) {
  printf("utun_register_control - proto_register_plumber(PF_INET, %d) failed: %d\n",
      utun_family, result);
  ctl_deregister(utun_kctlref);
  return result;
 }


 if ((result = proto_register_plumber(PF_INET6, utun_family,
           utun_attach_proto, ((void*)0))) != 0) {
  proto_unregister_plumber(PF_INET, utun_family);
  ctl_deregister(utun_kctlref);
  printf("utun_register_control - proto_register_plumber(PF_INET6, %d) failed: %d\n",
      utun_family, result);
  return result;
 }

 utun_lck_attr = lck_attr_alloc_init();
 utun_lck_grp_attr = lck_grp_attr_alloc_init();
 utun_lck_grp = lck_grp_alloc_init("utun", utun_lck_grp_attr);

 lck_mtx_init(&utun_lock, utun_lck_grp, utun_lck_attr);

 return 0;
}
