
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;



bool PolicyIsSupportedForCascade(UINT i)
{
 if (i == 0 || i == 4 || i == 5 || i == 12 || i == 13 ||
  i == 14 || i == 19 || i == 20 || i == 21 || i == 26 || i == 30 || i == 31 || i == 36)
 {

  return 0;
 }

 return 1;
}
