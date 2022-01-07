
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VALUE ;
typedef size_t UINT ;
struct TYPE_5__ {size_t num_value; int JsonHint_IsArray; int ** values; int type; int name; } ;
typedef int PACK ;
typedef TYPE_1__ ELEMENT ;


 int AddElement (int *,TYPE_1__*) ;
 int FreeValue (int *,int ) ;
 TYPE_1__* GetElement (int *,char*,int ) ;
 int * NewIntValue (size_t) ;
 int StrCpy (int ,int,char*) ;
 int VALUE_INT ;
 void* ZeroMallocEx (int,int) ;

ELEMENT *PackAddIntEx(PACK *p, char *name, UINT i, UINT index, UINT total)
{
 VALUE *v;
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0) || total == 0)
 {
  return ((void*)0);
 }

 v = NewIntValue(i);
 e = GetElement(p, name, VALUE_INT);
 if (e != ((void*)0))
 {
  if (e->num_value >= total)
  {
   FreeValue(e->values[index], VALUE_INT);
   e->values[index] = v;
  }
  else
  {
   FreeValue(v, VALUE_INT);
  }
 }
 else
 {
  e = ZeroMallocEx(sizeof(ELEMENT), 1);
  StrCpy(e->name, sizeof(e->name), name);
  e->num_value = total;
  e->type = VALUE_INT;
  e->values = ZeroMallocEx(sizeof(VALUE *) * total, 1);
  e->values[index] = v;

  if (AddElement(p, e) == 0)
  {
   return ((void*)0);
  }
 }

 e->JsonHint_IsArray = 1;

 return e;
}
