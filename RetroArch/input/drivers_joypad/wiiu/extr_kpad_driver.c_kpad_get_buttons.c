
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_bits_t ;
struct TYPE_2__ {int button_state; } ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;
 int kpad_query_pad (unsigned int) ;
 int to_wiimote_channel (unsigned int) ;
 TYPE_1__* wiimotes ;

__attribute__((used)) static void kpad_get_buttons(unsigned pad, input_bits_t *state)
{
   int channel = to_wiimote_channel(pad);

   if (!kpad_query_pad(pad) || channel < 0)
      BIT256_CLEAR_ALL_PTR(state);
   else
      BITS_COPY16_PTR(state, wiimotes[channel].button_state);
}
