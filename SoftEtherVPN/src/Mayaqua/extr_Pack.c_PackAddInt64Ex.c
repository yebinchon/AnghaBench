
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VALUE ;
typedef int UINT64 ;
typedef size_t UINT ;
struct TYPE_5__ {size_t num_value; int JsonHint_IsArray; int ** values; int type; int name; } ;
typedef int PACK ;
typedef TYPE_1__ ELEMENT ;


 int AddElement (int *,TYPE_1__*) ;
 int FreeValue (int *,int ) ;
 TYPE_1__* GetElement (int *,char*,int ) ;
 int * NewInt64Value (int ) ;
 int StrCpy (int ,int,char*) ;
 int VALUE_INT64 ;
 void* ZeroMallocEx (int,int) ;

ELEMENT *PackAddInt64Ex(PACK *p, char *name, UINT64 i, UINT index, UINT total)
{
 VALUE *v;
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0) || total == 0)
 {
  return ((void*)0);
 }

 v = NewInt64Value(i);
 e = GetElement(p, name, VALUE_INT64);
 if (e != ((void*)0))
 {
  if (e->num_value >= total)
  {
   FreeValue(e->values[index], VALUE_INT64);
   e->values[index] = v;
  }
  else
  {
   FreeValue(v, VALUE_INT64);
  }
 }
 else
 {
  e = ZeroMallocEx(sizeof(ELEMENT), 1);
  StrCpy(e->name, sizeof(e->name), name);
  e->num_value = total;
  e->type = VALUE_INT64;
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
