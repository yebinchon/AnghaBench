
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 unsigned int DEFAULT_MAX_PADS ;
 size_t DOSKEY_DOWN ;
 size_t DOSKEY_LEFT ;
 size_t DOSKEY_RETURN ;
 size_t DOSKEY_RIGHT ;
 size_t DOSKEY_RSHIFT ;
 size_t DOSKEY_UP ;
 size_t DOSKEY_a ;
 size_t DOSKEY_s ;
 size_t DOSKEY_x ;
 size_t DOSKEY_z ;
 int* dos_keyboard_state_get (unsigned int) ;

__attribute__((used)) static bool dos_joypad_button(unsigned port_num, uint16_t key)
{
   uint16_t *buf = dos_keyboard_state_get(port_num);

   if (port_num >= DEFAULT_MAX_PADS)
      return 0;

   switch (key)
   {
      case 137:
         return buf[DOSKEY_x];
      case 136:
         return buf[DOSKEY_z];
      case 129:
         return buf[DOSKEY_s];
      case 128:
         return buf[DOSKEY_a];
      case 132:
         return buf[DOSKEY_RSHIFT];
      case 131:
         return buf[DOSKEY_RETURN];
      case 130:
         return buf[DOSKEY_UP];
      case 135:
         return buf[DOSKEY_DOWN];
      case 134:
         return buf[DOSKEY_LEFT];
      case 133:
         return buf[DOSKEY_RIGHT];
   }

   return 0;
}
