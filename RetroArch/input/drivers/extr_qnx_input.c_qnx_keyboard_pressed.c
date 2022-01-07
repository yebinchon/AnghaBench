
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyboard_state; } ;
typedef TYPE_1__ qnx_input_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;


 scalar_t__ BIT_GET (int ,unsigned int) ;
 unsigned int RETROK_LAST ;
 unsigned int* rarch_keysym_lut ;

__attribute__((used)) static bool qnx_keyboard_pressed(qnx_input_t *qnx, unsigned id)
{
    unsigned bit = rarch_keysym_lut[(enum retro_key)id];
    return id < RETROK_LAST && BIT_GET(qnx->keyboard_state, bit);
}
