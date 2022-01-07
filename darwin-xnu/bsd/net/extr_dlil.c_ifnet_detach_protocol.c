
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {void* send_arp; void* resolve_multi; void* ioctl; void* event; void* pre_output; int input; } ;
struct TYPE_11__ {void* send_arp; void* resolve_multi; void* ioctl; void* event; void* pre_output; int input; } ;
struct TYPE_13__ {TYPE_2__ v2; TYPE_1__ v1; } ;
struct if_proto {scalar_t__ proto_kpi; int detached; TYPE_3__ kpi; int protocol_family; } ;
typedef scalar_t__ protocol_family_t ;
typedef TYPE_4__* ifnet_t ;
typedef int errno_t ;
struct TYPE_14__ {int * if_proto_hash; int (* if_del_proto ) (TYPE_4__*,int ) ;} ;


 int EINVAL ;
 int ENXIO ;
 int SLIST_REMOVE (int *,struct if_proto*,int ,int ) ;
 scalar_t__ dlil_verbose ;
 struct if_proto* find_attached_proto (TYPE_4__*,scalar_t__) ;
 char* if_name (TYPE_4__*) ;
 int if_proto ;
 int if_proto_free (struct if_proto*) ;
 int ifnet_lock_done (TYPE_4__*) ;
 int ifnet_lock_exclusive (TYPE_4__*) ;
 void* ifproto_media_event ;
 int ifproto_media_input_v1 ;
 int ifproto_media_input_v2 ;
 void* ifproto_media_ioctl ;
 void* ifproto_media_preout ;
 void* ifproto_media_resolve_multi ;
 void* ifproto_media_send_arp ;
 scalar_t__ kProtoKPI_v1 ;
 int next_hash ;
 int printf (char*,char*,char*,scalar_t__) ;
 size_t proto_hash_value (scalar_t__) ;
 int stub1 (TYPE_4__*,int ) ;

errno_t
ifnet_detach_protocol(ifnet_t ifp, protocol_family_t proto_family)
{
 struct if_proto *proto = ((void*)0);
 int retval = 0;

 if (ifp == ((void*)0) || proto_family == 0) {
  retval = EINVAL;
  goto end;
 }

 ifnet_lock_exclusive(ifp);

 proto = find_attached_proto(ifp, proto_family);
 if (proto == ((void*)0)) {
  retval = ENXIO;
  ifnet_lock_done(ifp);
  goto end;
 }


 if (ifp->if_del_proto)
  ifp->if_del_proto(ifp, proto->protocol_family);

 SLIST_REMOVE(&ifp->if_proto_hash[proto_hash_value(proto_family)],
     proto, if_proto, next_hash);

 if (proto->proto_kpi == kProtoKPI_v1) {
  proto->kpi.v1.input = ifproto_media_input_v1;
  proto->kpi.v1.pre_output = ifproto_media_preout;
  proto->kpi.v1.event = ifproto_media_event;
  proto->kpi.v1.ioctl = ifproto_media_ioctl;
  proto->kpi.v1.resolve_multi = ifproto_media_resolve_multi;
  proto->kpi.v1.send_arp = ifproto_media_send_arp;
 } else {
  proto->kpi.v2.input = ifproto_media_input_v2;
  proto->kpi.v2.pre_output = ifproto_media_preout;
  proto->kpi.v2.event = ifproto_media_event;
  proto->kpi.v2.ioctl = ifproto_media_ioctl;
  proto->kpi.v2.resolve_multi = ifproto_media_resolve_multi;
  proto->kpi.v2.send_arp = ifproto_media_send_arp;
 }
 proto->detached = 1;
 ifnet_lock_done(ifp);

 if (dlil_verbose) {
  printf("%s: detached %s protocol %d\n", if_name(ifp),
      (proto->proto_kpi == kProtoKPI_v1) ?
      "v1" : "v2", proto_family);
 }


 if_proto_free(proto);






 if_proto_free(proto);

end:
 return (retval);
}
