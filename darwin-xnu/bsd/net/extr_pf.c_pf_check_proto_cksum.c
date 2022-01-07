
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct udphdr {int dummy; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
typedef int sa_family_t ;
struct TYPE_12__ {int* pb_csum_flags; int* pb_csum_data; unsigned int pb_packet_len; unsigned int pb_contig_len; } ;
typedef TYPE_1__ pbuf_t ;
struct TYPE_16__ {int icps_checksum; } ;
struct TYPE_15__ {int m_len; int m_data; } ;
struct TYPE_14__ {int tcps_rcvbadsum; } ;
struct TYPE_13__ {int udps_badsum; } ;
struct TYPE_11__ {int icp6s_checksum; } ;




 int CSUM_DATA_VALID ;
 int CSUM_PSEUDO_HDR ;




 TYPE_10__ icmp6stat ;
 TYPE_9__ icmpstat ;
 scalar_t__ in_cksum (TYPE_7__*,int) ;
 TYPE_7__* m ;
 scalar_t__ pbuf_inet6_cksum (TYPE_1__*,int,int,int) ;
 scalar_t__ pbuf_inet_cksum (TYPE_1__*,int,int,int) ;
 TYPE_3__ tcpstat ;
 TYPE_2__ udpstat ;

__attribute__((used)) static int
pf_check_proto_cksum(pbuf_t *pbuf, int off, int len, u_int8_t p,
    sa_family_t af)
{
 u_int16_t sum;

 switch (p) {
 case 129:
 case 128:






  if ((*pbuf->pb_csum_flags &
      (CSUM_DATA_VALID | CSUM_PSEUDO_HDR)) ==
      (CSUM_DATA_VALID | CSUM_PSEUDO_HDR) &&
      (*pbuf->pb_csum_data ^ 0xffff) == 0) {
   return (0);
  }
  break;
 case 131:



  break;
 default:
  return (1);
 }
 if (off < (int)sizeof (struct ip) || len < (int)sizeof (struct udphdr))
  return (1);
 if (pbuf->pb_packet_len < (unsigned)(off + len))
  return (1);
 switch (af) {
 default:
  return (1);
 }
 if (sum) {
  switch (p) {
  case 129:
   tcpstat.tcps_rcvbadsum++;
   break;
  case 128:
   udpstat.udps_badsum++;
   break;
  case 131:
   icmpstat.icps_checksum++;
   break;





  }
  return (1);
 }
 return (0);
}
