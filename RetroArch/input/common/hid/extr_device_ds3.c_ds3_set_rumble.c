
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
typedef int ds3_instance_t ;



__attribute__((used)) static void ds3_set_rumble(void *data, enum retro_rumble_effect effect, uint16_t strength)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;
}
