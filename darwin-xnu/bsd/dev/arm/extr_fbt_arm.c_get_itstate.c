
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t get_itstate(uint32_t cpsr)
{
 return
  ((cpsr & 0x06000000) >> 25) |
  ((cpsr & 0x0000FC00) >> 8);
}
