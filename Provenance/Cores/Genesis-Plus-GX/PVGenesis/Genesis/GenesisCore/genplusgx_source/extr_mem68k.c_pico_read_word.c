
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pico_read_byte (unsigned int) ;

unsigned int pico_read_word(unsigned int address)
{
  return (pico_read_byte(address | 1) | (pico_read_byte(address) << 8));
}
