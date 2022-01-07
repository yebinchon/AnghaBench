
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct tcphdr {int dummy; } ;
typedef int sa_family_t ;
typedef int pbuf_t ;
typedef int caddr_t ;


 int NTOHS (int) ;
 int TCPOLEN_MAXSEG ;



 int bcopy (int ,int ,int) ;
 int pf_pull_hdr (int *,int,int*,int,int *,int *,int ) ;
 int tcp_mssdflt ;

__attribute__((used)) static u_int16_t
pf_get_mss(pbuf_t *pbuf, int off, u_int16_t th_off, sa_family_t af)
{
 int hlen;
 u_int8_t hdr[60];
 u_int8_t *opt, optlen;
 u_int16_t mss = tcp_mssdflt;

 hlen = th_off << 2;
 if (hlen <= (int)sizeof (struct tcphdr))
  return (0);
 if (!pf_pull_hdr(pbuf, off, hdr, hlen, ((void*)0), ((void*)0), af))
  return (0);
 opt = hdr + sizeof (struct tcphdr);
 hlen -= sizeof (struct tcphdr);
 while (hlen >= TCPOLEN_MAXSEG) {
  switch (*opt) {
  case 130:
  case 128:
   ++opt;
   --hlen;
   break;
  case 129:
   bcopy((caddr_t)(opt + 2), (caddr_t)&mss, 2);




  default:
   optlen = opt[1];
   if (optlen < 2)
    optlen = 2;
   hlen -= optlen;
   opt += optlen;
   break;
  }
 }
 return (mss);
}
