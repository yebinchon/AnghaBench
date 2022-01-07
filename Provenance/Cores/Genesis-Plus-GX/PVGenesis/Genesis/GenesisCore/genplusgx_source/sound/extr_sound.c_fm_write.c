
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YM_Write (unsigned int,unsigned int) ;
 int fm_update (unsigned int) ;

void fm_write(unsigned int cycles, unsigned int address, unsigned int data)
{

  if (address & 1)
  {
    fm_update(cycles);
  }


  YM_Write(address, data);
}
