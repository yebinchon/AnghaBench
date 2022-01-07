
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_init_params {int broadcast_len; int broadcast_addr; int event; int detach; int set_bpf_tap; int ioctl; int softc; int framer; int check_multi; int del_proto; int add_proto; int demux; int output; int type; int family; int unit; int name; int uniqueid_len; int uniqueid; } ;
struct ifnet_init_eparams {int len; int flags; int broadcast_len; int broadcast_addr; int event; int detach; int set_bpf_tap; int ioctl; int softc; int framer; int check_multi; int del_proto; int add_proto; int demux; int output; int type; int family; int unit; int name; int uniqueid_len; int uniqueid; int ver; } ;
typedef int ifnet_t ;
typedef int errno_t ;
typedef int einit ;


 int IFNET_INIT_ALLOC_KPI ;
 int IFNET_INIT_CURRENT_VERSION ;
 int IFNET_INIT_LEGACY ;
 int IFNET_INIT_NX_NOAUTO ;
 int bzero (struct ifnet_init_eparams*,int) ;
 int ifnet_allocate_extended (struct ifnet_init_eparams*,int *) ;

errno_t
ifnet_allocate_common(const struct ifnet_init_params *init,
    ifnet_t *ifp, bool is_internal)
{
 struct ifnet_init_eparams einit;

 bzero(&einit, sizeof (einit));

 einit.ver = IFNET_INIT_CURRENT_VERSION;
 einit.len = sizeof (einit);
 einit.flags = IFNET_INIT_LEGACY | IFNET_INIT_NX_NOAUTO;
 if (!is_internal) {
  einit.flags |= IFNET_INIT_ALLOC_KPI;
 }
 einit.uniqueid = init->uniqueid;
 einit.uniqueid_len = init->uniqueid_len;
 einit.name = init->name;
 einit.unit = init->unit;
 einit.family = init->family;
 einit.type = init->type;
 einit.output = init->output;
 einit.demux = init->demux;
 einit.add_proto = init->add_proto;
 einit.del_proto = init->del_proto;
 einit.check_multi = init->check_multi;
 einit.framer = init->framer;
 einit.softc = init->softc;
 einit.ioctl = init->ioctl;
 einit.set_bpf_tap = init->set_bpf_tap;
 einit.detach = init->detach;
 einit.event = init->event;
 einit.broadcast_addr = init->broadcast_addr;
 einit.broadcast_len = init->broadcast_len;

 return (ifnet_allocate_extended(&einit, ifp));
}
