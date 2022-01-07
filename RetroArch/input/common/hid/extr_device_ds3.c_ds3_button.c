
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int buttons; } ;
typedef TYPE_1__ ds3_instance_t ;



__attribute__((used)) static bool ds3_button(void *data, uint16_t joykey)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;
   if(!pad || joykey > 31)
      return 0;

   return pad->buttons & (1 << joykey);
}
