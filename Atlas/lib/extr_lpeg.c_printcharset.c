
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Charset ;


 int UCHAR_MAX ;
 int printf (char*,...) ;
 scalar_t__ testchar (int const,int) ;

__attribute__((used)) static void printcharset (const Charset st) {
  int i;
  printf("[");
  for (i = 0; i <= UCHAR_MAX; i++) {
    int first = i;
    while (testchar(st, i) && i <= UCHAR_MAX) i++;
    if (i - 1 == first)
      printf("(%02x)", first);
    else if (i - 1 > first)
      printf("(%02x-%02x)", first, i - 1);
  }
  printf("]");
}
