
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETHER_HDR_LEN ;
 int M16KCLBYTES ;
 int MBIGCLBYTES ;
 scalar_t__ njcl ;

__attribute__((used)) static inline int
feth_max_mtu(void)
{
 if (njcl > 0) {
  return (M16KCLBYTES - ETHER_HDR_LEN);
 }
 return (MBIGCLBYTES - ETHER_HDR_LEN);
}
