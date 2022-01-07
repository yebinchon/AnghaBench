
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ home; scalar_t__ up; scalar_t__ right; scalar_t__ down; scalar_t__ left; scalar_t__ y; scalar_t__ b; scalar_t__ a; scalar_t__ x; scalar_t__ l; scalar_t__ r; scalar_t__ zl; scalar_t__ zr; scalar_t__ minus; scalar_t__ plus; scalar_t__ l3; scalar_t__ r3; } ;
struct wiiupro {TYPE_1__ btn; } ;
struct hidpad_wiiupro_data {int data; } ;
typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BIT256_SET_PTR (int *,int ) ;
 int RARCH_MENU_TOGGLE ;
 int RETRO_DEVICE_ID_JOYPAD_A ;
 int RETRO_DEVICE_ID_JOYPAD_B ;
 int RETRO_DEVICE_ID_JOYPAD_DOWN ;
 int RETRO_DEVICE_ID_JOYPAD_L ;
 int RETRO_DEVICE_ID_JOYPAD_L2 ;
 int RETRO_DEVICE_ID_JOYPAD_L3 ;
 int RETRO_DEVICE_ID_JOYPAD_LEFT ;
 int RETRO_DEVICE_ID_JOYPAD_R ;
 int RETRO_DEVICE_ID_JOYPAD_R2 ;
 int RETRO_DEVICE_ID_JOYPAD_R3 ;
 int RETRO_DEVICE_ID_JOYPAD_RIGHT ;
 int RETRO_DEVICE_ID_JOYPAD_SELECT ;
 int RETRO_DEVICE_ID_JOYPAD_START ;
 int RETRO_DEVICE_ID_JOYPAD_UP ;
 int RETRO_DEVICE_ID_JOYPAD_X ;
 int RETRO_DEVICE_ID_JOYPAD_Y ;

__attribute__((used)) static void hidpad_wiiupro_get_buttons(void *data, input_bits_t *state)
{
   struct hidpad_wiiupro_data *device = (struct hidpad_wiiupro_data*)data;
   struct wiiupro *rpt = device ?
      (struct wiiupro*)&device->data : ((void*)0);

   if (!device || !rpt)
      return;

   BIT256_CLEAR_ALL_PTR(state);

   if (rpt->btn.r3)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_R3);
   if (rpt->btn.l3)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_L3);
   if (rpt->btn.plus)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_START);
   if ( rpt->btn.minus)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_SELECT);
   if ( rpt->btn.zr)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_R2);
   if ( rpt->btn.zl)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_L2);
   if ( rpt->btn.r)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_R);
   if ( rpt->btn.l)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_L);
   if ( rpt->btn.x)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_X);
   if ( rpt->btn.a)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_A);
   if ( rpt->btn.b)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_B);
   if ( rpt->btn.y)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_Y);
   if ( rpt->btn.left)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_LEFT);
   if ( rpt->btn.down)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_DOWN);
   if ( rpt->btn.right)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_RIGHT);
   if ( rpt->btn.up)
      BIT256_SET_PTR(state, RETRO_DEVICE_ID_JOYPAD_UP);
   if ( rpt->btn.home)
      BIT256_SET_PTR(state, RARCH_MENU_TOGGLE);
}
