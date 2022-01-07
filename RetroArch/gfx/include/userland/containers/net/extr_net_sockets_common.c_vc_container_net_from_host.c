
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int ) ;

uint32_t vc_container_net_from_host( uint32_t value )
{
   return htonl(value);
}
