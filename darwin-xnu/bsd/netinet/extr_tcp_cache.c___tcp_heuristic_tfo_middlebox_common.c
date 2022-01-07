
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcp_heuristic {int th_tfo_in_backoff; scalar_t__ th_tfo_enabled_time; scalar_t__ th_tfo_backoff; scalar_t__ th_tfo_backoff_until; } ;


 int tcp_backoff_maximum ;
 int tcp_ecn_timeout ;
 void* tcp_min_to_hz (int ) ;
 scalar_t__ tcp_now ;

__attribute__((used)) static void __tcp_heuristic_tfo_middlebox_common(struct tcp_heuristic *tpheur)
{
 if (tpheur->th_tfo_in_backoff)
  return;

 tpheur->th_tfo_in_backoff = 1;

 if (tpheur->th_tfo_enabled_time) {
  uint32_t old_backoff = tpheur->th_tfo_backoff;

  tpheur->th_tfo_backoff -= (tcp_now - tpheur->th_tfo_enabled_time);
  if (tpheur->th_tfo_backoff > old_backoff)
   tpheur->th_tfo_backoff = tcp_min_to_hz(tcp_ecn_timeout);
 }

 tpheur->th_tfo_backoff_until = tcp_now + tpheur->th_tfo_backoff;


 tpheur->th_tfo_backoff *= 2;

 if (tpheur->th_tfo_backoff > tcp_min_to_hz(tcp_backoff_maximum))
  tpheur->th_tfo_backoff = tcp_min_to_hz(tcp_ecn_timeout);
}
