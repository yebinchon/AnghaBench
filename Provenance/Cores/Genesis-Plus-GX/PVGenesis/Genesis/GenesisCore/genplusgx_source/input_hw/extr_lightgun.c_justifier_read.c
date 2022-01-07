
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* pad; } ;
struct TYPE_3__ {int State; size_t Port; } ;


 TYPE_2__ input ;
 TYPE_1__ lightgun ;

unsigned char justifier_read(void)
{

  if (lightgun.State & 0x40)
  {
    return 0x30;
  }




  return (((~input.pad[lightgun.Port] >> 6) & 0x03) | 0x70);
}
