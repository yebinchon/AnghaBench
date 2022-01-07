
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VALUE ;
typedef int UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int AddElement (int *,int *) ;
 int * NewDataValue (void*,int ) ;
 int * NewElement (char*,int ,int,int **) ;
 int VALUE_DATA ;

ELEMENT *PackAddData(PACK *p, char *name, void *data, UINT size)
{
 VALUE *v;
 ELEMENT *e;

 if (p == ((void*)0) || data == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 v = NewDataValue(data, size);
 e = NewElement(name, VALUE_DATA, 1, &v);
 if (AddElement(p, e) == 0)
 {
  return ((void*)0);
 }

 return e;
}
