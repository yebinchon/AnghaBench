
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void print_char_as_binary(char input) {
  int i;
  for (i = 0; i < 8; i++) {
    char shift_byte = 0x01 << (7 - i);
    if (shift_byte & input) {
      printf("1");
    } else {
      printf("0");
    }
  }
}
