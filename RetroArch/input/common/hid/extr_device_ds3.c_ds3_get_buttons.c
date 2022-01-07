
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_bits_t ;
struct TYPE_2__ {int buttons; } ;
typedef TYPE_1__ ds3_instance_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BIT256_SET_PTR (int *,int ) ;
 int BITS_COPY16_PTR (int *,int) ;
 int RARCH_MENU_TOGGLE ;

__attribute__((used)) static void ds3_get_buttons(void *data, input_bits_t *state)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;

   if(pad)
   {
      BITS_COPY16_PTR(state, pad->buttons);

      if(pad->buttons & 0x10000)
         BIT256_SET_PTR(state, RARCH_MENU_TOGGLE);
   } else {
      BIT256_CLEAR_ALL_PTR(state);
   }
}
