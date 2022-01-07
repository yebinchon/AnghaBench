
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char axis; int busy; } ;


 TYPE_1__ tablet ;

void terebi_oekaki_write(unsigned char data)
{

  tablet.axis = (data & 1) ^ 1;


  tablet.busy = 1;
}
