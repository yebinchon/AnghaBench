
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 TYPE_1__ ym2413 ;

unsigned int YM2413Read(unsigned int a)
{

  return 0xF8 | ym2413.status;
}
