
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static char* make_signed_hex_str_16(uint val)
{
 static char str[20];

 val &= 0xffff;

 if(val == 0x8000)
  sprintf(str, "-$8000");
 else if(val & 0x8000)
  sprintf(str, "-$%x", (0-val) & 0x7fff);
 else
  sprintf(str, "$%x", val & 0x7fff);

 return str;
}
