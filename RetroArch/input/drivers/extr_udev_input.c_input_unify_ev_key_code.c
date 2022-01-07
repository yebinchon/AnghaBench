
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_BACKSPACE ;
 int KEY_ENTER ;


__attribute__((used)) static unsigned input_unify_ev_key_code(unsigned code)
{



   switch (code)
   {
      case 128:
         return KEY_ENTER;
      case 129:
         return KEY_BACKSPACE;
      default:
         return code;
   }
}
