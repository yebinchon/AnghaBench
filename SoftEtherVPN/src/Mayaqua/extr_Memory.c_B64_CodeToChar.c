
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;



char B64_CodeToChar(BYTE c)
{
 BYTE r;
 r = '=';
 if (c <= 0x19)
 {
  r = c + 'A';
 }
 if (c >= 0x1a && c <= 0x33)
 {
  r = c - 0x1a + 'a';
 }
 if (c >= 0x34 && c <= 0x3d)
 {
  r = c - 0x34 + '0';
 }
 if (c == 0x3e)
 {
  r = '+';
 }
 if (c == 0x3f)
 {
  r = '/';
 }
 return r;
}
