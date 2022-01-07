
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;




 int tcp_out_cksum_stats (int ) ;
 int udp_out_cksum_stats (int ) ;

__attribute__((used)) static void
ip_out_cksum_stats(int proto, u_int32_t len)
{
 switch (proto) {
 case 129:
  tcp_out_cksum_stats(len);
  break;
 case 128:
  udp_out_cksum_stats(len);
  break;
 default:

  break;
 }
}
