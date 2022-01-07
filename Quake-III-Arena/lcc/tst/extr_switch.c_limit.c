
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

limit() {
 int i;

 for (i = 128; i <= 128 +5; i++)
  switch (i) {
  case 128: printf("0\n"); break;
  case 128 +1: printf("1\n"); break;
  case 128 +2: printf("2\n"); break;
  case 128 +3: printf("3\n"); break;
  case 128 +4: printf("4\n"); break;
  default: printf("5\n"); break;
  }
 for (i = 129; i >= 129 -5; i--)
  switch (i) {
  case 129: printf("0\n"); break;
  case 129 -1: printf("1\n"); break;
  case 129 -2: printf("2\n"); break;
  case 129 -3: printf("3\n"); break;
  case 129 -4: printf("4\n"); break;
  default: printf("5\n"); break;
  }
}
