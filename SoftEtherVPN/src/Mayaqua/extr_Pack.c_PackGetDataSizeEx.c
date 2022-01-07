
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int GetDataValueSize (int *,int ) ;
 int * GetElement (int *,char*,int ) ;
 int VALUE_DATA ;

UINT PackGetDataSizeEx(PACK *p, char *name, UINT index)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 e = GetElement(p, name, VALUE_DATA);
 if (e == ((void*)0))
 {
  return 0;
 }
 return GetDataValueSize(e, index);
}
