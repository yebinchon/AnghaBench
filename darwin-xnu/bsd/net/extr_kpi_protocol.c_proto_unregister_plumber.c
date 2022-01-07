
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_family_str {int dummy; } ;
typedef int protocol_family_t ;
typedef int ifnet_family_t ;


 int FREE (struct proto_family_str*,int ) ;
 int M_IFADDR ;
 int TAILQ_REMOVE (int *,struct proto_family_str*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int proto_fam_next ;
 int proto_family_head ;
 int proto_family_mutex ;
 struct proto_family_str* proto_plumber_find (int ,int ) ;

void
proto_unregister_plumber(protocol_family_t protocol_family,
    ifnet_family_t interface_family)
{
 struct proto_family_str *proto_family;

 lck_mtx_lock(proto_family_mutex);

 proto_family = proto_plumber_find(protocol_family, interface_family);
 if (proto_family == ((void*)0)) {
  lck_mtx_unlock(proto_family_mutex);
  return;
 }

 TAILQ_REMOVE(&proto_family_head, proto_family, proto_fam_next);
 FREE(proto_family, M_IFADDR);

 lck_mtx_unlock(proto_family_mutex);
}
