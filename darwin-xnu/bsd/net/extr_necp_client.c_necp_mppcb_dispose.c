
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mppcb {int necp_client_uuid; } ;


 int necp_client_unregister_multipath_cb (int ,struct mppcb*) ;
 int uuid_clear (int ) ;
 int uuid_is_null (int ) ;

void
necp_mppcb_dispose(struct mppcb *mpp)
{
 if (!uuid_is_null(mpp->necp_client_uuid)) {
  necp_client_unregister_multipath_cb(mpp->necp_client_uuid, mpp);
  uuid_clear(mpp->necp_client_uuid);
 }
}
