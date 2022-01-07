
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int htons (int ) ;

uint16_t vc_container_net_from_host_16( uint16_t value )
{
   return htons(value);
}
