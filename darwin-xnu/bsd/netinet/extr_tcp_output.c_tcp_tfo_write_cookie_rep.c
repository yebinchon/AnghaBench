
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct tcpcb {int t_tfo_stats; int t_inpcb; } ;
typedef int out ;
struct TYPE_2__ {int tcps_tfo_cookie_sent; } ;


 int CCAES_BLOCK_SIZE ;
 unsigned int MAX_TCPOPTLEN ;
 unsigned int TCPOLEN_FASTOPEN_REQ ;
 int TCPOPT_FASTOPEN ;
 unsigned int TFO_COOKIE_LEN_DEFAULT ;
 int TFO_S_COOKIE_SENT ;
 int memcpy (int *,int *,unsigned int) ;
 int tcp_tfo_gen_cookie (int ,int *,int) ;
 TYPE_1__ tcpstat ;

__attribute__((used)) static unsigned
tcp_tfo_write_cookie_rep(struct tcpcb *tp, unsigned optlen, u_char *opt)
{
 u_char out[CCAES_BLOCK_SIZE];
 unsigned ret = 0;
 u_char *bp;

 if ((MAX_TCPOPTLEN - optlen) <
     (TCPOLEN_FASTOPEN_REQ + TFO_COOKIE_LEN_DEFAULT))
  return (ret);

 tcp_tfo_gen_cookie(tp->t_inpcb, out, sizeof(out));

 bp = opt + optlen;

 *bp++ = TCPOPT_FASTOPEN;
 *bp++ = 2 + TFO_COOKIE_LEN_DEFAULT;
 memcpy(bp, out, TFO_COOKIE_LEN_DEFAULT);
 ret += 2 + TFO_COOKIE_LEN_DEFAULT;

 tp->t_tfo_stats |= TFO_S_COOKIE_SENT;
 tcpstat.tcps_tfo_cookie_sent++;

 return (ret);
}
