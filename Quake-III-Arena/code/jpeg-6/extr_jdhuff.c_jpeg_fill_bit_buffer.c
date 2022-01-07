
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ boolean ;
struct TYPE_8__ {size_t bytes_in_buffer; int unread_marker; int get_buffer; int bits_left; int const* next_input_byte; scalar_t__* printed_eod_ptr; TYPE_3__* cinfo; } ;
typedef TYPE_2__ bitread_working_state ;
typedef int bit_buf_type ;
struct TYPE_9__ {TYPE_1__* src; } ;
struct TYPE_7__ {size_t bytes_in_buffer; int const* next_input_byte; int (* fill_input_buffer ) (TYPE_3__*) ;} ;
typedef int const JOCTET ;


 scalar_t__ FALSE ;
 int GETJOCTET (int ) ;
 int JWRN_HIT_MARKER ;
 int MIN_GET_BITS ;
 scalar_t__ TRUE ;
 int WARNMS (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

boolean
jpeg_fill_bit_buffer (bitread_working_state * state,
        register bit_buf_type get_buffer, register int bits_left,
        int nbits)

{

  register const JOCTET * next_input_byte = state->next_input_byte;
  register size_t bytes_in_buffer = state->bytes_in_buffer;
  register int c;




  while (bits_left < MIN_GET_BITS) {

    if (state->unread_marker != 0)
      goto no_more_data;

    if (bytes_in_buffer == 0) {
      if (! (*state->cinfo->src->fill_input_buffer) (state->cinfo))
 return FALSE;
      next_input_byte = state->cinfo->src->next_input_byte;
      bytes_in_buffer = state->cinfo->src->bytes_in_buffer;
    }
    bytes_in_buffer--;
    c = GETJOCTET(*next_input_byte++);


    if (c == 0xFF) {
      do {
 if (bytes_in_buffer == 0) {
   if (! (*state->cinfo->src->fill_input_buffer) (state->cinfo))
     return FALSE;
   next_input_byte = state->cinfo->src->next_input_byte;
   bytes_in_buffer = state->cinfo->src->bytes_in_buffer;
 }
 bytes_in_buffer--;
 c = GETJOCTET(*next_input_byte++);
      } while (c == 0xFF);

      if (c == 0) {

 c = 0xFF;
      } else {


 state->unread_marker = c;

      no_more_data:


 if (bits_left >= nbits)
   break;






 if (! *(state->printed_eod_ptr)) {
   WARNMS(state->cinfo, JWRN_HIT_MARKER);
   *(state->printed_eod_ptr) = TRUE;
 }
 c = 0;
      }
    }


    get_buffer = (get_buffer << 8) | c;
    bits_left += 8;
  }


  state->next_input_byte = next_input_byte;
  state->bytes_in_buffer = bytes_in_buffer;
  state->get_buffer = get_buffer;
  state->bits_left = bits_left;

  return TRUE;
}
