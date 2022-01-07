
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct hidpad_ps4_data {scalar_t__* motors; } ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;


 int RETRO_RUMBLE_STRONG ;
 int hidpad_ps4_send_control (struct hidpad_ps4_data*) ;

__attribute__((used)) static void hidpad_ps4_set_rumble(void *data,
      enum retro_rumble_effect effect, uint16_t strength)
{
}
