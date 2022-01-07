
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* kbd_id ;
 int kbd_num ;

bool is_keyboard_id(int id)
{
   for(int i=0; i<kbd_num; i++)
      if (id == kbd_id[i]) return 1;

   return 0;
}
