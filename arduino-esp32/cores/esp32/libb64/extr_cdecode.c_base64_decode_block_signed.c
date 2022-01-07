
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_3__ {int plainchar; int step; } ;
typedef TYPE_1__ base64_decodestate ;


 int base64_decode_value_signed (int ) ;





__attribute__((used)) static int base64_decode_block_signed(const int8_t* code_in, const int length_in, int8_t* plaintext_out, base64_decodestate* state_in){
  const int8_t* codechar = code_in;
  int8_t* plainchar = plaintext_out;
  int8_t fragment;

  *plainchar = state_in->plainchar;

  switch (state_in->step){
    while (1){
      case 131:
        do {
          if (codechar == code_in+length_in){
            state_in->step = 131;
            state_in->plainchar = *plainchar;
            return plainchar - plaintext_out;
          }
          fragment = (int8_t)base64_decode_value_signed(*codechar++);
        } while (fragment < 0);
        *plainchar = (fragment & 0x03f) << 2;
      case 130:
        do {
          if (codechar == code_in+length_in){
            state_in->step = 130;
            state_in->plainchar = *plainchar;
            return plainchar - plaintext_out;
          }
          fragment = (int8_t)base64_decode_value_signed(*codechar++);
        } while (fragment < 0);
        *plainchar++ |= (fragment & 0x030) >> 4;
        *plainchar = (fragment & 0x00f) << 4;
      case 129:
        do {
          if (codechar == code_in+length_in){
            state_in->step = 129;
            state_in->plainchar = *plainchar;
            return plainchar - plaintext_out;
          }
          fragment = (int8_t)base64_decode_value_signed(*codechar++);
        } while (fragment < 0);
        *plainchar++ |= (fragment & 0x03c) >> 2;
        *plainchar = (fragment & 0x003) << 6;
      case 128:
        do {
          if (codechar == code_in+length_in){
            state_in->step = 128;
            state_in->plainchar = *plainchar;
            return plainchar - plaintext_out;
          }
          fragment = (int8_t)base64_decode_value_signed(*codechar++);
        } while (fragment < 0);
        *plainchar++ |= (fragment & 0x03f);
    }
  }

  return plainchar - plaintext_out;
}
