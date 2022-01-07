
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int16_t ;
struct tcphdr {void* th_sum; } ;
struct ip {int ip_v; int ip_hl; int ip_p; int ip_len; void* ip_sum; } ;
typedef int mbuf_t ;
typedef scalar_t__ errno_t ;






 int mbuf_clear_csum_performed (int ) ;
 scalar_t__ mbuf_data (int ) ;
 scalar_t__ mbuf_inet_cksum (int ,int const,int,int,void**) ;
 int ntohs (int ) ;

__attribute__((used)) static void chksm_update(mbuf_t data)
{
 u_int16_t ip_sum;
 u_int16_t tsum;
 struct tcphdr *tcp;
 errno_t err;

 unsigned char *ptr = (unsigned char *)mbuf_data(data);
 struct ip *ip = (struct ip *)(void *)ptr;
 if (ip->ip_v != 4) {
  return;
 }

 ip->ip_sum = 0;
 err = mbuf_inet_cksum(data, 0, 0, ip->ip_hl << 2, &ip_sum);
 if (err == 0)
  ip->ip_sum = ip_sum;
 switch (ip->ip_p) {
  case 129:
   tcp = (struct tcphdr *)(void *)(ptr + (ip->ip_hl << 2));
   tcp->th_sum = 0;
   err = mbuf_inet_cksum(data, 129, ip->ip_hl << 2,
       ntohs(ip->ip_len) - (ip->ip_hl << 2), &tsum);
   if (err == 0)
    tcp->th_sum = tsum;
   break;
  case 128:

   break;
  case 131:
   break;
  case 130:
   break;
  default:
   break;
 }

 mbuf_clear_csum_performed(data);
 return;
}
