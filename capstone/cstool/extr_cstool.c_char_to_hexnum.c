
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t char_to_hexnum(char c)
{
 if (c >= '0' && c <= '9') {
  return (uint8_t)(c - '0');
 }

 if (c >= 'a' && c <= 'f') {
  return (uint8_t)(10 + c - 'a');
 }


 return (uint8_t)(10 + c - 'A');
}
