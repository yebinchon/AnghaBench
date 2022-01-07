
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

int Util_chrieq(char c1, char c2)
{
 switch (c1 ^ c2) {
 case 0x00:
  return TRUE;
 case 0x20:
  return (c1 >= 'A' && c1 <= 'Z') || (c1 >= 'a' && c1 <= 'z');
 default:
  return FALSE;
 }
}
