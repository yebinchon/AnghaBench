
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;


 scalar_t__ uip_tcp_ticks ;

u32_t uip_tcpiss_next()
{
 static u32_t iss = 6510;
 iss += uip_tcp_ticks;
 return iss;
}
