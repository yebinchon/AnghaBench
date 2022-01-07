
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int connected; } ;
typedef TYPE_1__ joypad_connection_t ;


 int joypad_is_end_of_list (TYPE_1__*) ;

int pad_connection_find_vacant_pad(joypad_connection_t *joyconn)
{
  unsigned i;

  if (!joyconn)
    return -1;

  for (i = 0; !joypad_is_end_of_list(&joyconn[i]); i++)
  {
    if(!joyconn[i].connected)
      return i;
  }

  return -1;
}
