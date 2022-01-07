
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;



void MakeCharArray2(char *str, char c, UINT count)
{
 UINT i;

 for (i = 0;i < count;i++)
 {
  str[i] = c;
 }

 str[count] = 0;
}
