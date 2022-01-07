
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct retro_keybind {unsigned int mbutton; unsigned int joykey; void* joyaxis; } ;
struct menu_bind_state_port {int* mbuttons; int* buttons; scalar_t__* axes; int* hats; } ;
struct menu_bind_state {int * state; } ;


 void* AXIS_NEG (unsigned int) ;
 void* AXIS_NONE ;
 void* AXIS_POS (unsigned int) ;
 int HAT_DOWN_MASK ;
 int HAT_LEFT_MASK ;
 unsigned int HAT_MAP (unsigned int,int) ;
 int HAT_RIGHT_MASK ;
 int HAT_UP_MASK ;
 unsigned int MENU_MAX_AXES ;
 unsigned int MENU_MAX_BUTTONS ;
 unsigned int MENU_MAX_HATS ;
 unsigned int MENU_MAX_MBUTTONS ;
 unsigned int NO_BTN ;
 int abs (scalar_t__) ;

__attribute__((used)) static bool menu_input_key_bind_poll_find_hold_pad(
      struct menu_bind_state *new_state,
     struct retro_keybind * output,
      unsigned p)
{
   unsigned a, b, h;
   const struct menu_bind_state_port *n = (const struct menu_bind_state_port*)
      &new_state->state[p];

   for (b = 0; b < MENU_MAX_MBUTTONS; b++)
   {
      bool iterate = n->mbuttons[b];

      if (!iterate)
         continue;

      switch ( b )
      {

     case 132:
     case 130:
     case 131:
     case 136:
     case 135:
     case 128:
     case 129:
     case 133:
     case 134:
        output->mbutton = b;
        return 1;
     }
   }

   for (b = 0; b < MENU_MAX_BUTTONS; b++)
   {
      bool iterate = n->buttons[b];

      if (!iterate)
         continue;

      output->joykey = b;
      output->joyaxis = AXIS_NONE;
      return 1;
   }


   for (a = 0; a < MENU_MAX_AXES; a++)
   {
      if (abs(n->axes[a]) >= 20000)
      {


         output->joyaxis = n->axes[a] > 0
            ? AXIS_POS(a) : AXIS_NEG(a);
         output->joykey = NO_BTN;

       return 1;
      }
   }

   for (h = 0; h < MENU_MAX_HATS; h++)
   {
      uint16_t trigged = n->hats[h];
      uint16_t sane_trigger = 0;

      if (trigged & HAT_UP_MASK)
         sane_trigger = HAT_UP_MASK;
      else if (trigged & HAT_DOWN_MASK)
         sane_trigger = HAT_DOWN_MASK;
      else if (trigged & HAT_LEFT_MASK)
         sane_trigger = HAT_LEFT_MASK;
      else if (trigged & HAT_RIGHT_MASK)
         sane_trigger = HAT_RIGHT_MASK;

      if (sane_trigger)
      {
         output->joykey = HAT_MAP(h, sane_trigger);
         output->joyaxis = AXIS_NONE;
         return 1;
      }
   }

   return 0;
}
