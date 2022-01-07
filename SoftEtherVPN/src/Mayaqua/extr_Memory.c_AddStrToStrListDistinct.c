
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int Add (int *,int ) ;
 int CopyStr (char*) ;
 int IsInListStr (int *,char*) ;

bool AddStrToStrListDistinct(LIST *o, char *str)
{
 if (o == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (IsInListStr(o, str) == 0)
 {
  Add(o, CopyStr(str));

  return 1;
 }

 return 0;
}
