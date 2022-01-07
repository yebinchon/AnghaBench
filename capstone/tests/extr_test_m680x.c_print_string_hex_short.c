
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned char) ;

__attribute__((used)) static void print_string_hex_short(unsigned char *str, size_t len)
{
 unsigned char *c;

 for (c = str; c < str + len; c++)
  printf("%02X", *c & 0xff);
}
