
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int necp_client_uuid; } ;


 int necp_client_unregister_socket_flow (int ,struct inpcb*) ;
 int uuid_clear (int ) ;
 int uuid_is_null (int ) ;

void
necp_inpcb_remove_cb(struct inpcb *inp)
{
 if (!uuid_is_null(inp->necp_client_uuid)) {
  necp_client_unregister_socket_flow(inp->necp_client_uuid, inp);
  uuid_clear(inp->necp_client_uuid);
 }
}
