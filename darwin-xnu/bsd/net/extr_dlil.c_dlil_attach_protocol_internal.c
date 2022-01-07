
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t u_int32_t ;
struct net_event_data {int dummy; } ;
struct kev_dl_proto_data {int proto_remaining_count; int proto_family; } ;
struct ifnet_demux_desc {int dummy; } ;
struct ifnet {int (* if_add_proto ) (struct ifnet*,int ,struct ifnet_demux_desc const*,size_t) ;int * if_proto_hash; } ;
struct if_proto {int protocol_family; struct ifnet* ifp; } ;
typedef int errno_t ;


 int EEXIST ;
 int KEV_DL_PROTO_ATTACHED ;
 int KEV_DL_SUBCLASS ;
 struct if_proto* SLIST_FIRST (int *) ;
 int SLIST_INSERT_AFTER (struct if_proto*,struct if_proto*,int ) ;
 int SLIST_INSERT_HEAD (int *,struct if_proto*,int ) ;
 struct if_proto* SLIST_NEXT (struct if_proto*,int ) ;
 int dlil_ifp_protolist (struct ifnet*,int *,int ) ;
 int dlil_post_msg (struct ifnet*,int ,int ,struct net_event_data*,int) ;
 struct if_proto* find_attached_proto (struct ifnet*,int ) ;
 int if_proto_free (struct if_proto*) ;
 int if_proto_ref (struct if_proto*) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int next_hash ;
 size_t proto_hash_value (int ) ;
 int stub1 (struct ifnet*,int ,struct ifnet_demux_desc const*,size_t) ;

__attribute__((used)) static errno_t
dlil_attach_protocol_internal(struct if_proto *proto,
    const struct ifnet_demux_desc *demux_list, u_int32_t demux_count,
    uint32_t * proto_count)
{
 struct kev_dl_proto_data ev_pr_data;
 struct ifnet *ifp = proto->ifp;
 int retval = 0;
 u_int32_t hash_value = proto_hash_value(proto->protocol_family);
 struct if_proto *prev_proto;
 struct if_proto *_proto;


 ifnet_lock_exclusive(ifp);
 _proto = find_attached_proto(ifp, proto->protocol_family);
 if (_proto != ((void*)0)) {
  ifnet_lock_done(ifp);
  if_proto_free(_proto);
  return (EEXIST);
 }





 retval = ifp->if_add_proto(ifp, proto->protocol_family, demux_list,
     demux_count);
 if (retval) {
  ifnet_lock_done(ifp);
  return (retval);
 }




 prev_proto = SLIST_FIRST(&ifp->if_proto_hash[hash_value]);
 while (prev_proto != ((void*)0) && SLIST_NEXT(prev_proto, next_hash) != ((void*)0))
  prev_proto = SLIST_NEXT(prev_proto, next_hash);
 if (prev_proto)
  SLIST_INSERT_AFTER(prev_proto, proto, next_hash);
 else
  SLIST_INSERT_HEAD(&ifp->if_proto_hash[hash_value],
      proto, next_hash);


 if_proto_ref(proto);





 ev_pr_data.proto_family = proto->protocol_family;
 ev_pr_data.proto_remaining_count = dlil_ifp_protolist(ifp, ((void*)0), 0);

 ifnet_lock_done(ifp);

 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_PROTO_ATTACHED,
     (struct net_event_data *)&ev_pr_data,
     sizeof (struct kev_dl_proto_data));
 if (proto_count != ((void*)0)) {
  *proto_count = ev_pr_data.proto_remaining_count;
 }
 return (retval);
}
