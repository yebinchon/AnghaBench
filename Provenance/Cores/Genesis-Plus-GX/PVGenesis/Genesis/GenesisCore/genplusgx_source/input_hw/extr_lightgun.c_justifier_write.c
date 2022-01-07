
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Port; unsigned char State; } ;


 TYPE_1__ lightgun ;

void justifier_write(unsigned char data, unsigned char mask)
{

  data &= mask;


  lightgun.Port = 4 + ((data >> 5) & 1);


  lightgun.State = data;
}
