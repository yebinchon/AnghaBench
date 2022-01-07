
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int ICMP6_ERROR_RST_MRCVIF ;
 int icmp6_error_flag (struct mbuf*,int,int,int,int ) ;

void
icmp6_error(struct mbuf *m, int type, int code, int param) {
 icmp6_error_flag(m, type, code, param, ICMP6_ERROR_RST_MRCVIF);
}
