
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ LocalTime ;
 scalar_t__ timingdelay ;

void Delay(uint32_t nCount) {

  timingdelay = LocalTime;


  while( (LocalTime - timingdelay) < nCount ) {
  }
}
