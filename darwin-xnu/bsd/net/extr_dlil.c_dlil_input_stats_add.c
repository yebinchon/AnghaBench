
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_stat_increment_param {scalar_t__ packets_in; scalar_t__ bytes_in; scalar_t__ errors_in; scalar_t__ packets_out; scalar_t__ bytes_out; scalar_t__ errors_out; scalar_t__ collisions; scalar_t__ dropped; } ;
struct dlil_threading_info {int tstats; struct ifnet_stat_increment_param stats; } ;
typedef scalar_t__ boolean_t ;


 int PKTCNTR_ADD (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
dlil_input_stats_add(const struct ifnet_stat_increment_param *s,
    struct dlil_threading_info *inp, boolean_t poll)
{
 struct ifnet_stat_increment_param *d = &inp->stats;

 if (s->packets_in != 0)
  d->packets_in += s->packets_in;
 if (s->bytes_in != 0)
  d->bytes_in += s->bytes_in;
 if (s->errors_in != 0)
  d->errors_in += s->errors_in;

 if (s->packets_out != 0)
  d->packets_out += s->packets_out;
 if (s->bytes_out != 0)
  d->bytes_out += s->bytes_out;
 if (s->errors_out != 0)
  d->errors_out += s->errors_out;

 if (s->collisions != 0)
  d->collisions += s->collisions;
 if (s->dropped != 0)
  d->dropped += s->dropped;

 if (poll)
  PKTCNTR_ADD(&inp->tstats, s->packets_in, s->bytes_in);
}
