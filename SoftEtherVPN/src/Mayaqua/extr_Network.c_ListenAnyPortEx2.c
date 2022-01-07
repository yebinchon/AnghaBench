
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ListenEx (int,int) ;

SOCK *ListenAnyPortEx2(bool local_only, bool disable_ca)
{
 UINT i;
 SOCK *s;
 for (i = 40000;i < 65536;i++)
 {
  s = ListenEx(i, local_only);
  if (s != ((void*)0))
  {
   return s;
  }
 }

 return ((void*)0);
}
