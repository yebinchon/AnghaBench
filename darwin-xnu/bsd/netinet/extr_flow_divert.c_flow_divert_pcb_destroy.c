
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_divert_pcb {int * app_data; int * connect_packet; int * connect_token; int * remote_address; int * local_address; int bytes_received; int bytes_sent; int bytes_read_by_app; int bytes_written_by_app; } ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,int ,int ,int ,int ) ;
 int FREE (int *,int ) ;
 int FREE_ZONE (struct flow_divert_pcb*,int,int ) ;
 int LOG_INFO ;
 int M_FLOW_DIVERT_PCB ;
 int M_SONAME ;
 int M_TEMP ;
 int mbuf_freem (int *) ;

__attribute__((used)) static void
flow_divert_pcb_destroy(struct flow_divert_pcb *fd_cb)
{
 FDLOG(LOG_INFO, fd_cb, "Destroying, app tx %u, app rx %u, tunnel tx %u, tunnel rx %u",
   fd_cb->bytes_written_by_app, fd_cb->bytes_read_by_app, fd_cb->bytes_sent, fd_cb->bytes_received);

 if (fd_cb->local_address != ((void*)0)) {
  FREE(fd_cb->local_address, M_SONAME);
 }
 if (fd_cb->remote_address != ((void*)0)) {
  FREE(fd_cb->remote_address, M_SONAME);
 }
 if (fd_cb->connect_token != ((void*)0)) {
  mbuf_freem(fd_cb->connect_token);
 }
 if (fd_cb->connect_packet != ((void*)0)) {
  mbuf_freem(fd_cb->connect_packet);
 }
 if (fd_cb->app_data != ((void*)0)) {
  FREE(fd_cb->app_data, M_TEMP);
 }
 FREE_ZONE(fd_cb, sizeof(*fd_cb), M_FLOW_DIVERT_PCB);
}
