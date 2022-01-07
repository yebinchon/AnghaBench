
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ip {int dummy; } ;
struct TYPE_2__ {int ips_snd_swcsum_bytes; int ips_rcv_swcsum_bytes; int ips_rcv_swcsum; int ips_snd_swcsum; } ;


 scalar_t__ IP_HDR_ALIGNED_P (struct ip const*) ;
 int in_cksum_hdr (struct ip const*) ;
 int inet_cksum_buffer (void const*,int ,int ,int) ;
 TYPE_1__ ipstat ;

uint16_t
ip_cksum_hdr_dir_buffer(const void *buffer, uint32_t hlen, uint32_t len,
    int out)
{
 const struct ip *ip = buffer;

 if (out) {
  ipstat.ips_snd_swcsum++;
  ipstat.ips_snd_swcsum_bytes += hlen;
 } else {
  ipstat.ips_rcv_swcsum++;
  ipstat.ips_rcv_swcsum_bytes += hlen;
 }

 if (hlen == sizeof (*ip) &&
     len >= sizeof (*ip) && IP_HDR_ALIGNED_P(ip))
  return (in_cksum_hdr(ip));

 return (inet_cksum_buffer(buffer, 0, 0, hlen));
}
