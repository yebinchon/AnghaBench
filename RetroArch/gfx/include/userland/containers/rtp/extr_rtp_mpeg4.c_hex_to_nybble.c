
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static uint8_t hex_to_nybble(char hex)
{
   if (hex >= '0' && hex <= '9')
      return hex - '0';
   if (hex >= 'A' && hex <= 'F')
      return hex - 'A' + 10;
   if (hex >= 'a' && hex <= 'f')
      return hex - 'a' + 10;
   return 0;
}
