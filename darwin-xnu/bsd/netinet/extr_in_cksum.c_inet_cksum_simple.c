
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mbuf {int dummy; } ;


 int inet_cksum (struct mbuf*,int ,int ,int) ;

uint16_t
inet_cksum_simple(struct mbuf *m, int len)
{
 return (inet_cksum(m, 0, 0, len));
}
