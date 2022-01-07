
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT ;



UINT HexTo4Bit(char c)
{
 if ('0' <= c && c <= '9')
 {
  return c - '0';
 }
 else if ('a' <= c && c <= 'f')
 {
  return c - 'a' + 10;
 }
 else if ('A' <= c && c <= 'F')
 {
  return c - 'A' + 10;
 }
 else
 {
  return 0;
 }
}
