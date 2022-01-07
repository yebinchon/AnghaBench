
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;



bool IsPrintableAsciiChar(char c)
{
 UCHAR uc = (UCHAR)c;
 if (uc <= 31)
 {
  return 0;
 }
 if (uc >= 127)
 {
  return 0;
 }
 return 1;
}
