
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LocalTime ;
 int TICKS_PER_MS ;
 int timingdelay ;

void Delay(uint32_t nCount)
{

  timingdelay = LocalTime;


  while( (LocalTime - timingdelay) < (nCount*TICKS_PER_MS) ) {
  }
}
