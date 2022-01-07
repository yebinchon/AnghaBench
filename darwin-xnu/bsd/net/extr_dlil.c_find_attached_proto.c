
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
struct ifnet {int * if_proto_hash; } ;
struct if_proto {size_t protocol_family; } ;


 int IFNET_LCK_ASSERT_OWNED ;
 struct if_proto* SLIST_FIRST (int *) ;
 struct if_proto* SLIST_NEXT (struct if_proto*,int ) ;
 int if_proto_ref (struct if_proto*) ;
 int ifnet_lock_assert (struct ifnet*,int ) ;
 int next_hash ;
 size_t proto_hash_value (size_t) ;

__attribute__((used)) static struct if_proto *
find_attached_proto(struct ifnet *ifp, u_int32_t protocol_family)
{
 struct if_proto *proto = ((void*)0);
 u_int32_t i = proto_hash_value(protocol_family);

 ifnet_lock_assert(ifp, IFNET_LCK_ASSERT_OWNED);

 if (ifp->if_proto_hash != ((void*)0))
  proto = SLIST_FIRST(&ifp->if_proto_hash[i]);

 while (proto != ((void*)0) && proto->protocol_family != protocol_family)
  proto = SLIST_NEXT(proto, next_hash);

 if (proto != ((void*)0))
  if_proto_ref(proto);

 return (proto);
}
