
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int YM2612Read () ;
 int fm_update (unsigned int) ;

unsigned int fm_read(unsigned int cycles, unsigned int address)
{

  fm_update(cycles);


  return YM2612Read();
}
