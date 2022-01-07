
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int8_t ;
typedef int base64_decodestate ;


 int base64_decode_block_signed (scalar_t__ const*,int const,scalar_t__*,int *) ;
 int base64_init_decodestate (int *) ;

__attribute__((used)) static int base64_decode_chars_signed(const int8_t* code_in, const int length_in, int8_t* plaintext_out){
  base64_decodestate _state;
  base64_init_decodestate(&_state);
  int len = base64_decode_block_signed(code_in, length_in, plaintext_out, &_state);
  if(len > 0) plaintext_out[len] = 0;
  return len;
}
