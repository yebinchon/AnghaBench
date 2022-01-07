
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int xkb_state ;
 int xkb_state_update_mask (int ,int ,int ,int ,int ,int ,int ) ;

void handle_xkb_state_mask(uint32_t depressed,
      uint32_t latched, uint32_t locked, uint32_t group)
{
   if (!xkb_state)
      return;
   xkb_state_update_mask(xkb_state, depressed, latched, locked, 0, 0, group);
}
