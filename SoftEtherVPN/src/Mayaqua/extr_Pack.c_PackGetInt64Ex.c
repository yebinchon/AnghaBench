
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int * GetElement (int *,char*,int ) ;
 int GetInt64Value (int *,int ) ;
 int VALUE_INT64 ;

UINT64 PackGetInt64Ex(PACK *p, char *name, UINT index)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 e = GetElement(p, name, VALUE_INT64);
 if (e == ((void*)0))
 {
  return 0;
 }
 return GetInt64Value(e, index);
}
