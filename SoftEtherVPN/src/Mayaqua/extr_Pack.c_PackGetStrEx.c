
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int * GetElement (int *,char*,int ) ;
 int GetStrValue (int *,scalar_t__) ;
 int StrCpy (char*,scalar_t__,int ) ;
 int VALUE_STR ;

bool PackGetStrEx(PACK *p, char *name, char *str, UINT size, UINT index)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0) || str == ((void*)0) || size == 0)
 {
  return 0;
 }

 str[0] = 0;

 e = GetElement(p, name, VALUE_STR);
 if (e == ((void*)0))
 {
  return 0;
 }

 StrCpy(str, size, GetStrValue(e, index));
 return 1;
}
