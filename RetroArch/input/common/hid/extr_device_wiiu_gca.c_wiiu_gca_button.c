
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int buttons; } ;
typedef TYPE_1__ gca_pad_t ;



__attribute__((used)) static bool wiiu_gca_button(void *data, uint16_t joykey)
{
  gca_pad_t *pad = (gca_pad_t *)data;

  if(!pad || joykey > 31)
    return 0;

  return pad->buttons & (1 << joykey);
}
