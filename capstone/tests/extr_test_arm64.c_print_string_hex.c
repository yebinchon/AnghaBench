
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void print_string_hex(const char *comment, unsigned char *str, size_t len)
{
 unsigned char *c;

 printf("%s", comment);
 for (c = str; c < str + len; c++) {
  printf("0x%02x ", *c & 0xff);
 }

 printf("\n");
}
