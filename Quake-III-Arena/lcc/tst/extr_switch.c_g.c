
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

g() {
 int i;

 printf("g:\n");
 for (i = 1; i <= 10; i++)
  switch (i) {
  case 1: case 2: printf("1 %d\n", i); break;
  case 3: case 4: case 5: printf("2 %d\n", i); break;
  case 6: case 7: case 8: printf("3 %d\n", i);
  default:
   printf("d %d\n", i); break;
  case 1001: case 1002: case 1003: case 1004:
   printf("5 %d\n", i); break;
  case 3001: case 3002: case 3003: case 3004:
   printf("6 %d\n", i); break;
 }
}
