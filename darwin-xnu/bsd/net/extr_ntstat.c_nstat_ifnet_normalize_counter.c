
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_4__ {int sack_episodes; int rst_drop; int rxmit_drop; } ;
struct TYPE_3__ {int sack_episodes; int rst_drop; int rxmit_drop; } ;
struct if_tcp_ecn_stat {int ecn_client_success; int ecn_server_success; int ecn_off_conn; int ecn_client_setup; int ecn_server_setup; int ecn_total_conn; TYPE_2__ ecn_off; TYPE_1__ ecn_on; } ;



__attribute__((used)) static void
nstat_ifnet_normalize_counter(struct if_tcp_ecn_stat *if_st)
{
 u_int64_t ecn_on_conn, ecn_off_conn;

 if (if_st == ((void*)0))
  return;
 ecn_on_conn = if_st->ecn_client_success +
     if_st->ecn_server_success;
 ecn_off_conn = if_st->ecn_off_conn +
     (if_st->ecn_client_setup - if_st->ecn_client_success) +
     (if_st->ecn_server_setup - if_st->ecn_server_success);





 if (ecn_on_conn > 0) {
  if_st->ecn_on.sack_episodes =
      (if_st->ecn_on.sack_episodes << 10) / ecn_on_conn;
  if_st->ecn_on.rst_drop =
      (if_st->ecn_on.rst_drop << 10) * 100 / ecn_on_conn;
  if_st->ecn_on.rxmit_drop =
      (if_st->ecn_on.rxmit_drop << 10) * 100 / ecn_on_conn;
 } else {

  if_st->ecn_on.sack_episodes = 0;
  if_st->ecn_on.rst_drop = 0;
  if_st->ecn_on.rxmit_drop = 0;
 }

 if (ecn_off_conn > 0) {
  if_st->ecn_off.sack_episodes =
      (if_st->ecn_off.sack_episodes << 10) / ecn_off_conn;
  if_st->ecn_off.rst_drop =
      (if_st->ecn_off.rst_drop << 10) * 100 / ecn_off_conn;
  if_st->ecn_off.rxmit_drop =
      (if_st->ecn_off.rxmit_drop << 10) * 100 / ecn_off_conn;
 } else {
  if_st->ecn_off.sack_episodes = 0;
  if_st->ecn_off.rst_drop = 0;
  if_st->ecn_off.rxmit_drop = 0;
 }
 if_st->ecn_total_conn = ecn_off_conn + ecn_on_conn;
}
