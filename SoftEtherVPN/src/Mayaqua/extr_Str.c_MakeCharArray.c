
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 char* Malloc (int) ;

char *MakeCharArray(char c, UINT count)
{
 UINT i;
 char *ret = Malloc(count + 1);

 for (i = 0;i < count;i++)
 {
  ret[i] = c;
 }

 ret[count] = 0;

 return ret;
}
