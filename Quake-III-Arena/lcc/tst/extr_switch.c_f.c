
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

f() {
 int i, x = 0, y;

 printf("f:\n");
 for (i = 0; i <= 20; i++) {
  y = i;
  switch (i) {
  case 1: x = i; break;
  case 2: x = i; break;
  case 7: x = i; break;
  case 8: x = i; break;
  case 9: x = i; break;
  case 16: x = i; break;
  case 17: x = i; break;
  case 18: x = i; break;
  case 19: x = i; break;
  case 20: x = i; break;
  }
  printf("x = %d\n", x);
 }
}
