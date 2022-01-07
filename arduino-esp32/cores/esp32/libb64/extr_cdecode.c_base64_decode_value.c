
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int base64_decode_value_signed (int ) ;

int base64_decode_value(char value_in){
  return base64_decode_value_signed(*((int8_t *) &value_in));
}
