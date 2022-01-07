
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TCP_RETRANSHZ ;

__attribute__((used)) static uint32_t tcp_min_to_hz(uint32_t minutes)
{
 if (minutes > 65536)
  return ((uint32_t)65536 * 60 * TCP_RETRANSHZ);

 return (minutes * 60 * TCP_RETRANSHZ);
}
