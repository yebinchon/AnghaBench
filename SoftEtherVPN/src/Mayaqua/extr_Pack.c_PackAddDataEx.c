
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
 int * NewDataValue (void*,size_t) ;
 int StrCpy (int ,int,char*) ;
 int VALUE_DATA ;
 void* ZeroMallocEx (int,int) ;

ELEMENT *PackAddDataEx(PACK *p, char *name, void *data, UINT size, UINT index, UINT total)
{
 VALUE *v;
 ELEMENT *e;

 if (p == ((void*)0) || data == ((void*)0) || name == ((void*)0) || total == 0)
 {
  return ((void*)0);
 }

 v = NewDataValue(data, size);
 e = GetElement(p, name, VALUE_DATA);
 if (e != ((void*)0))
 {
  if (e->num_value >= total)
  {
   FreeValue(e->values[index], VALUE_DATA);
   e->values[index] = v;
  }
  else
  {
   FreeValue(v, VALUE_DATA);
  }
 }
 else
 {
  e = ZeroMallocEx(sizeof(ELEMENT), 1);
  StrCpy(e->name, sizeof(e->name), name);
  e->num_value = total;
  e->type = VALUE_DATA;
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
