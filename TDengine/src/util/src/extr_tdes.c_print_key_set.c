
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* k; int* c; int* d; } ;
typedef TYPE_1__ key_set ;


 int print_char_as_binary (int) ;
 int printf (char*,...) ;

void print_key_set(key_set key_set) {
  int i;
  printf("K: \n");
  for (i = 0; i < 8; i++) {
    printf("%02X : ", key_set.k[i]);
    print_char_as_binary(key_set.k[i]);
    printf("\n");
  }
  printf("\nC: \n");

  for (i = 0; i < 4; i++) {
    printf("%02X : ", key_set.c[i]);
    print_char_as_binary(key_set.c[i]);
    printf("\n");
  }
  printf("\nD: \n");

  for (i = 0; i < 4; i++) {
    printf("%02X : ", key_set.d[i]);
    print_char_as_binary(key_set.d[i]);
    printf("\n");
  }
  printf("\n");
}
