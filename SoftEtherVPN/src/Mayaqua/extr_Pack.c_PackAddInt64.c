
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VALUE ;
typedef int UINT64 ;
typedef int PACK ;
typedef int ELEMENT ;


 int AddElement (int *,int *) ;
 int * NewElement (char*,int ,int,int **) ;
 int * NewInt64Value (int ) ;
 int VALUE_INT64 ;

ELEMENT *PackAddInt64(PACK *p, char *name, UINT64 i)
{
 VALUE *v;
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 v = NewInt64Value(i);
 e = NewElement(name, VALUE_INT64, 1, &v);
 if (AddElement(p, e) == 0)
 {
  return ((void*)0);
 }
 return e;
}
