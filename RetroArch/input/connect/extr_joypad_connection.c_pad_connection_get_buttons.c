
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
typedef int input_bits_t ;
struct TYPE_4__ {int (* get_buttons ) (int ,int *) ;} ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int stub1 (int ,int *) ;

void pad_connection_get_buttons(joypad_connection_t *joyconn,
      unsigned pad, input_bits_t *state)
{
 if (joyconn && joyconn->iface)
  joyconn->iface->get_buttons(joyconn->data, state);
   else
  BIT256_CLEAR_ALL_PTR( state );
}
