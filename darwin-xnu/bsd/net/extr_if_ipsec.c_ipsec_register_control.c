
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {int ctl_sendsize; int ctl_recvsize; int ctl_getopt; int ctl_setopt; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_bind; int ctl_flags; scalar_t__* ctl_name; } ;
struct ipsec_pcb {int dummy; } ;
typedef int kern_ctl ;
typedef scalar_t__ errno_t ;


 int CTL_FLAG_PRIVILEGED ;
 scalar_t__ ENOMEM ;
 int IPSEC_CONTROL_NAME ;
 int IPSEC_PCB_ZONE_MAX ;
 int IPSEC_PCB_ZONE_NAME ;
 int PF_INET ;
 int PF_INET6 ;
 int TAILQ_INIT (int *) ;
 int bzero (struct kern_ctl_reg*,int) ;
 int ctl_deregister (int ) ;
 scalar_t__ ctl_register (struct kern_ctl_reg*,int *) ;
 int ipsec_attach_proto ;
 int ipsec_ctl_bind ;
 int ipsec_ctl_connect ;
 int ipsec_ctl_disconnect ;
 int ipsec_ctl_getopt ;
 int ipsec_ctl_send ;
 int ipsec_ctl_setopt ;
 int ipsec_family ;
 int ipsec_head ;
 int ipsec_kctlref ;
 int ipsec_lck_attr ;
 int ipsec_lck_grp ;
 int ipsec_lck_grp_attr ;
 int ipsec_lock ;
 int ipsec_pcb_size ;
 int * ipsec_pcb_zone ;
 int ipsec_register_nexus () ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ mbuf_tag_id_find (int ,int*) ;
 int printf (char*,...) ;
 scalar_t__ proto_register_plumber (int ,int,int ,int *) ;
 int proto_unregister_plumber (int ,int) ;
 int strlcpy (scalar_t__*,int ,int) ;
 int * zinit (int,int,int ,int ) ;

errno_t
ipsec_register_control(void)
{
 struct kern_ctl_reg kern_ctl;
 errno_t result = 0;


 result = mbuf_tag_id_find(IPSEC_CONTROL_NAME, &ipsec_family);
 if (result != 0) {
  printf("ipsec_register_control - mbuf_tag_id_find_internal failed: %d\n", result);
  return result;
 }

 ipsec_pcb_size = sizeof(struct ipsec_pcb);
 ipsec_pcb_zone = zinit(ipsec_pcb_size,
         IPSEC_PCB_ZONE_MAX * ipsec_pcb_size,
         0, IPSEC_PCB_ZONE_NAME);
 if (ipsec_pcb_zone == ((void*)0)) {
  printf("ipsec_register_control - zinit(ipsec_pcb) failed");
  return ENOMEM;
 }





 TAILQ_INIT(&ipsec_head);

 bzero(&kern_ctl, sizeof(kern_ctl));
 strlcpy(kern_ctl.ctl_name, IPSEC_CONTROL_NAME, sizeof(kern_ctl.ctl_name));
 kern_ctl.ctl_name[sizeof(kern_ctl.ctl_name) - 1] = 0;
 kern_ctl.ctl_flags = CTL_FLAG_PRIVILEGED;
 kern_ctl.ctl_sendsize = 64 * 1024;
 kern_ctl.ctl_recvsize = 64 * 1024;
 kern_ctl.ctl_bind = ipsec_ctl_bind;
 kern_ctl.ctl_connect = ipsec_ctl_connect;
 kern_ctl.ctl_disconnect = ipsec_ctl_disconnect;
 kern_ctl.ctl_send = ipsec_ctl_send;
 kern_ctl.ctl_setopt = ipsec_ctl_setopt;
 kern_ctl.ctl_getopt = ipsec_ctl_getopt;

 result = ctl_register(&kern_ctl, &ipsec_kctlref);
 if (result != 0) {
  printf("ipsec_register_control - ctl_register failed: %d\n", result);
  return result;
 }


 if ((result = proto_register_plumber(PF_INET, ipsec_family,
           ipsec_attach_proto, ((void*)0))) != 0) {
  printf("ipsec_register_control - proto_register_plumber(PF_INET, %d) failed: %d\n",
      ipsec_family, result);
  ctl_deregister(ipsec_kctlref);
  return result;
 }


 if ((result = proto_register_plumber(PF_INET6, ipsec_family,
           ipsec_attach_proto, ((void*)0))) != 0) {
  proto_unregister_plumber(PF_INET, ipsec_family);
  ctl_deregister(ipsec_kctlref);
  printf("ipsec_register_control - proto_register_plumber(PF_INET6, %d) failed: %d\n",
      ipsec_family, result);
  return result;
 }

 ipsec_lck_attr = lck_attr_alloc_init();
 ipsec_lck_grp_attr = lck_grp_attr_alloc_init();
 ipsec_lck_grp = lck_grp_alloc_init("ipsec", ipsec_lck_grp_attr);
 lck_mtx_init(&ipsec_lock, ipsec_lck_grp, ipsec_lck_attr);

 return 0;
}
