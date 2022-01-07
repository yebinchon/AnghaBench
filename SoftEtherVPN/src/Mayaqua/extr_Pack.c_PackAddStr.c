
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VALUE ;
typedef int PACK ;
typedef int ELEMENT ;


 int AddElement (int *,int *) ;
 int * NewElement (char*,int ,int,int **) ;
 int * NewStrValue (char*) ;
 int VALUE_STR ;

ELEMENT *PackAddStr(PACK *p, char *name, char *str)
{
 VALUE *v;
 ELEMENT *e = ((void*)0);

 if (p == ((void*)0) || name == ((void*)0) || str == ((void*)0))
 {
  return ((void*)0);
 }

 v = NewStrValue(str);
 e = NewElement(name, VALUE_STR, 1, &v);
 if (AddElement(p, e) == 0)
 {
  return ((void*)0);
 }
 return e;
}
