
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet_attach_proto_param_v2 {int demux_count; int demux_list; int send_arp; int resolve; int detached; int ioctl; int event; int pre_output; int input; } ;
struct TYPE_3__ {int send_arp; int resolve_multi; int detached; int ioctl; int event; int pre_output; int input; } ;
struct TYPE_4__ {TYPE_1__ v2; } ;
struct if_proto {TYPE_2__ kpi; int proto_kpi; scalar_t__ protocol_family; int * ifp; } ;
typedef scalar_t__ protocol_family_t ;
typedef int * ifnet_t ;
typedef int errno_t ;


 int DLIL_PRINTF (char*,char*,scalar_t__,int) ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int IFF_UP ;
 int SIOCSIFFLAGS ;
 int bzero (struct if_proto*,int) ;
 int dlif_proto_zone ;
 int dlil_attach_protocol_internal (struct if_proto*,int ,int ,int*) ;
 int dlil_post_sifflags_msg (int *) ;
 scalar_t__ dlil_verbose ;
 char* if_name (int *) ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ifnet_ioctl (int *,int ,int ,int *) ;
 int ifnet_lookup (int *) ;
 int ifnet_set_flags (int *,int ,int ) ;
 int kProtoKPI_v2 ;
 int printf (char*,char*,scalar_t__,int) ;
 struct if_proto* zalloc (int ) ;
 int zfree (int ,struct if_proto*) ;

errno_t
ifnet_attach_protocol_v2(ifnet_t ifp, protocol_family_t protocol,
    const struct ifnet_attach_proto_param_v2 *proto_details)
{
 int retval = 0;
 struct if_proto *ifproto = ((void*)0);
 uint32_t proto_count = 0;

 ifnet_head_lock_shared();
 if (ifp == ((void*)0) || protocol == 0 || proto_details == ((void*)0)) {
  retval = EINVAL;
  goto end;
 }

 if (!ifnet_lookup(ifp)) {
  retval = ENXIO;
  goto end;
 }

 ifproto = zalloc(dlif_proto_zone);
 if (ifproto == ((void*)0)) {
  retval = ENOMEM;
  goto end;
 }
 bzero(ifproto, sizeof(*ifproto));


 ifproto->ifp = ifp;
 ifproto->protocol_family = protocol;
 ifproto->proto_kpi = kProtoKPI_v2;
 ifproto->kpi.v2.input = proto_details->input;
 ifproto->kpi.v2.pre_output = proto_details->pre_output;
 ifproto->kpi.v2.event = proto_details->event;
 ifproto->kpi.v2.ioctl = proto_details->ioctl;
 ifproto->kpi.v2.detached = proto_details->detached;
 ifproto->kpi.v2.resolve_multi = proto_details->resolve;
 ifproto->kpi.v2.send_arp = proto_details->send_arp;

 retval = dlil_attach_protocol_internal(ifproto,
   proto_details->demux_list, proto_details->demux_count,
   &proto_count);

end:
 if (retval != 0 && retval != EEXIST && ifp != ((void*)0)) {
  DLIL_PRINTF("%s: failed to attach v2 protocol %d (err=%d)\n",
      if_name(ifp), protocol, retval);
 } else {
  if (dlil_verbose) {
   printf("%s: attached v2 protocol %d (count = %d)\n",
          if_name(ifp),
          protocol, proto_count);
  }
 }
 ifnet_head_done();
 if (retval == 0) {





  (void) ifnet_set_flags(ifp, IFF_UP, IFF_UP);
  (void) ifnet_ioctl(ifp, 0, SIOCSIFFLAGS, ((void*)0));
  dlil_post_sifflags_msg(ifp);
 } else if (ifproto != ((void*)0)) {
  zfree(dlif_proto_zone, ifproto);
 }
 return (retval);
}
