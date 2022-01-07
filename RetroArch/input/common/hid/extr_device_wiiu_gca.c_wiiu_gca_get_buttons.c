
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_bits_t ;
struct TYPE_2__ {int buttons; } ;
typedef TYPE_1__ gca_pad_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;

__attribute__((used)) static void wiiu_gca_get_buttons(void *data, input_bits_t *state)
{
   gca_pad_t *pad = (gca_pad_t *)data;
   if(pad)
   {
      BITS_COPY16_PTR(state, pad->buttons);
   } else {
      BIT256_CLEAR_ALL_PTR(state);
   }
}
