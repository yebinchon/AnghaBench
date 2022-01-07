
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* keys; } ;
typedef TYPE_1__ rwebinput_input_t ;


 int RETROK_LAST ;

__attribute__((used)) static bool rwebinput_key_pressed(rwebinput_input_t *rwebinput, int key)
{
   if (key >= RETROK_LAST)
      return 0;

   return rwebinput->keys[key];
}
