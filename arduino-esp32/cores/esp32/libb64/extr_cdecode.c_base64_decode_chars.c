
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int base64_decode_chars_signed (int *,int const,int *) ;

int base64_decode_chars(const char* code_in, const int length_in, char* plaintext_out){
  return base64_decode_chars_signed((int8_t *) code_in, length_in, (int8_t *) plaintext_out);
}
