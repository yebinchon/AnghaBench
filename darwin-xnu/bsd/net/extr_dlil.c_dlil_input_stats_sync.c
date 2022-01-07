
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet_stat_increment_param {scalar_t__ packets_in; scalar_t__ bytes_in; scalar_t__ errors_in; scalar_t__ packets_out; scalar_t__ bytes_out; scalar_t__ errors_out; scalar_t__ collisions; scalar_t__ dropped; } ;
struct TYPE_4__ {int ifi_iqdrops; int ifi_collisions; int ifi_oerrors; int ifi_obytes; int ifi_opackets; int ifi_ierrors; int ifi_ibytes; int ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; TYPE_1__ if_data; } ;
struct TYPE_6__ {scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_5__ {int ifi_poll_bytes; int ifi_poll_packets; } ;
struct dlil_threading_info {TYPE_3__ tstats; TYPE_2__ pstats; int input_lck; struct ifnet_stat_increment_param stats; } ;


 int atomic_add_64 (int *,scalar_t__) ;
 int ifnet_notify_data_threshold (struct ifnet*) ;
 int lck_mtx_convert_spin (int *) ;

__attribute__((used)) static void
dlil_input_stats_sync(struct ifnet *ifp, struct dlil_threading_info *inp)
{
 struct ifnet_stat_increment_param *s = &inp->stats;





 if (s->packets_in != 0) {
  atomic_add_64(&ifp->if_data.ifi_ipackets, s->packets_in);
  s->packets_in = 0;
 }
 if (s->bytes_in != 0) {
  atomic_add_64(&ifp->if_data.ifi_ibytes, s->bytes_in);
  s->bytes_in = 0;
 }
 if (s->errors_in != 0) {
  atomic_add_64(&ifp->if_data.ifi_ierrors, s->errors_in);
  s->errors_in = 0;
 }

 if (s->packets_out != 0) {
  atomic_add_64(&ifp->if_data.ifi_opackets, s->packets_out);
  s->packets_out = 0;
 }
 if (s->bytes_out != 0) {
  atomic_add_64(&ifp->if_data.ifi_obytes, s->bytes_out);
  s->bytes_out = 0;
 }
 if (s->errors_out != 0) {
  atomic_add_64(&ifp->if_data.ifi_oerrors, s->errors_out);
  s->errors_out = 0;
 }

 if (s->collisions != 0) {
  atomic_add_64(&ifp->if_data.ifi_collisions, s->collisions);
  s->collisions = 0;
 }
 if (s->dropped != 0) {
  atomic_add_64(&ifp->if_data.ifi_iqdrops, s->dropped);
  s->dropped = 0;
 }

 if (ifp->if_data_threshold != 0) {
  lck_mtx_convert_spin(&inp->input_lck);
  ifnet_notify_data_threshold(ifp);
 }





 if (inp->tstats.packets != 0) {
  inp->pstats.ifi_poll_packets += inp->tstats.packets;
  inp->tstats.packets = 0;
 }
 if (inp->tstats.bytes != 0) {
  inp->pstats.ifi_poll_bytes += inp->tstats.bytes;
  inp->tstats.bytes = 0;
 }
}
