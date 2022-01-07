
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_str (char**,char*,...) ;

__attribute__((used)) static void print_string_hex(char **result, const char *comment, unsigned char *str, size_t len)
{
 unsigned char *c;

 add_str(result, "%s", comment);
 for (c = str; c < str + len; c++) {
  add_str(result, "0x%02x", *c & 0xff);
  if (c < str + len - 1)
   add_str(result, " ");
 }

}
