
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct net_event_data {int dummy; } ;
struct kev_dl_proto_data {int proto_family; scalar_t__ proto_remaining_count; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {int (* detached ) (struct ifnet*,int) ;} ;
struct TYPE_4__ {int (* detached ) (struct ifnet*,int) ;} ;
struct TYPE_6__ {TYPE_2__ v2; TYPE_1__ v1; } ;
struct if_proto {int protocol_family; scalar_t__ proto_kpi; TYPE_3__ kpi; int detached; int refcount; struct ifnet* ifp; } ;


 int IFF_UP ;
 int KEV_DL_PROTO_DETACHED ;
 int KEV_DL_SUBCLASS ;
 int SIOCSIFFLAGS ;
 int VERIFY (int ) ;
 int atomic_add_32_ov (int *,int) ;
 int dlif_proto_zone ;
 scalar_t__ dlil_ifp_protolist (struct ifnet*,int *,int ) ;
 int dlil_post_msg (struct ifnet*,int ,int ,struct net_event_data*,int) ;
 int dlil_post_sifflags_msg (struct ifnet*) ;
 int if_rtproto_del (struct ifnet*,int) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,int *) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int ifnet_set_flags (struct ifnet*,int ,int ) ;
 scalar_t__ kProtoKPI_v1 ;
 scalar_t__ kProtoKPI_v2 ;
 int stub1 (struct ifnet*,int) ;
 int stub2 (struct ifnet*,int) ;
 int zfree (int ,struct if_proto*) ;

__attribute__((used)) static void
if_proto_free(struct if_proto *proto)
{
 u_int32_t oldval;
 struct ifnet *ifp = proto->ifp;
 u_int32_t proto_family = proto->protocol_family;
 struct kev_dl_proto_data ev_pr_data;

 oldval = atomic_add_32_ov(&proto->refcount, -1);
 if (oldval > 1)
  return;


 VERIFY(proto->detached);

 if (proto->proto_kpi == kProtoKPI_v1) {
  if (proto->kpi.v1.detached)
   proto->kpi.v1.detached(ifp, proto->protocol_family);
 }
 if (proto->proto_kpi == kProtoKPI_v2) {
  if (proto->kpi.v2.detached)
   proto->kpi.v2.detached(ifp, proto->protocol_family);
 }





 if_rtproto_del(ifp, proto_family);





 ifnet_lock_shared(ifp);
 ev_pr_data.proto_family = proto_family;
 ev_pr_data.proto_remaining_count = dlil_ifp_protolist(ifp, ((void*)0), 0);
 ifnet_lock_done(ifp);

 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_PROTO_DETACHED,
     (struct net_event_data *)&ev_pr_data,
     sizeof (struct kev_dl_proto_data));

 if (ev_pr_data.proto_remaining_count == 0) {





  (void) ifnet_set_flags(ifp, 0, IFF_UP);
  (void) ifnet_ioctl(ifp, 0, SIOCSIFFLAGS, ((void*)0));
  dlil_post_sifflags_msg(ifp);
 }

 zfree(dlif_proto_zone, proto);
}
