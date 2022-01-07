
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static uint16_t network_to_host_16(const uint8_t *buffer)
{
   return (buffer[0] << 8) | buffer[1];
}
