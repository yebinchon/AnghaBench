
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VALUE ;
typedef int UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int AddElement (int *,int *) ;
 int * NewElement (char*,int ,int,int **) ;
 int * NewIntValue (int ) ;
 int VALUE_INT ;

ELEMENT *PackAddInt(PACK *p, char *name, UINT i)
{
 VALUE *v;
 ELEMENT *e = ((void*)0);

 if (p == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 v = NewIntValue(i);
 e = NewElement(name, VALUE_INT, 1, &v);
 if (AddElement(p, e) == 0)
 {
  return ((void*)0);
 }
 return e;
}
