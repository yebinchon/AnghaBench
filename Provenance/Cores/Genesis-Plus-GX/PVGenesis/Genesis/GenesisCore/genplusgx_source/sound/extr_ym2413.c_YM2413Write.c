
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int address; unsigned int status; } ;


 int OPLLWriteReg (unsigned int,unsigned int) ;
 TYPE_1__ ym2413 ;

void YM2413Write(unsigned int a, unsigned int v)
{
  if( !(a&2) )
  {
    if( !(a&1) )
    {

      ym2413.address = v & 0xff;
    }
    else
    {

      OPLLWriteReg(ym2413.address,v);
    }
  }
  else
  {

    ym2413.status = v & 0x01;
  }
}
