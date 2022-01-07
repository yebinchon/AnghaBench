
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int VPAD_MASK_BUTTONS ;

__attribute__((used)) static void update_button_state(uint64_t *state, uint32_t held_buttons)
{
   *state = held_buttons & VPAD_MASK_BUTTONS;
}
