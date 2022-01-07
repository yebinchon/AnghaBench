
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tcpcb {int t_tfo_stats; } ;
struct tcp_cache_key_src {int dummy; } ;


 int TCPCACHE_F_TFO_DATA ;
 int TCPCACHE_F_TFO_DATA_RST ;
 int TCPCACHE_F_TFO_REQ ;
 int TCPCACHE_F_TFO_REQ_RST ;
 int TFO_S_COOKIE_REQ ;
 int TFO_S_SYN_DATA_SENT ;
 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;
 int tcp_heuristic_reset_counters (struct tcp_cache_key_src*,int) ;

void tcp_heuristic_tfo_success(struct tcpcb *tp)
{
 struct tcp_cache_key_src tcks;
 uint8_t flag = 0;

 tcp_cache_key_src_create(tp, &tcks);

 if (tp->t_tfo_stats & TFO_S_SYN_DATA_SENT)
  flag = (TCPCACHE_F_TFO_DATA | TCPCACHE_F_TFO_REQ |
   TCPCACHE_F_TFO_DATA_RST | TCPCACHE_F_TFO_REQ_RST );
 if (tp->t_tfo_stats & TFO_S_COOKIE_REQ)
  flag = (TCPCACHE_F_TFO_REQ | TCPCACHE_F_TFO_REQ_RST);

 tcp_heuristic_reset_counters(&tcks, flag);
}
