
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int VALUE ;
typedef int PACK ;
typedef int ELEMENT ;


 int AddElement (int *,int *) ;
 int * NewElement (char*,int ,int,int **) ;
 int * NewUniStrValue (int *) ;
 int VALUE_UNISTR ;

ELEMENT *PackAddUniStr(PACK *p, char *name, wchar_t *unistr)
{
 VALUE *v;
 ELEMENT *e = ((void*)0);

 if (p == ((void*)0) || name == ((void*)0) || unistr == ((void*)0))
 {
  return ((void*)0);
 }

 v = NewUniStrValue(unistr);
 e = NewElement(name, VALUE_UNISTR, 1, &v);
 if (AddElement(p, e) == 0)
 {
  return ((void*)0);
 }
 return e;
}
