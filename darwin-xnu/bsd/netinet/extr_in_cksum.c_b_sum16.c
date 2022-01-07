
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int os_cpu_in_cksum (void const*,int,int ) ;

uint16_t
b_sum16(const void *buf, int len)
{
 return (os_cpu_in_cksum(buf, len, 0));
}
