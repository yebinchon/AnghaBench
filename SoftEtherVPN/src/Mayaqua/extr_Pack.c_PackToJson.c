
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int num_value; char* JsonHint_GroupName; int name; scalar_t__ JsonHint_IsArray; } ;
struct TYPE_9__ {int * elements; int * json_subitem_names; } ;
typedef TYPE_1__ PACK ;
typedef int LIST ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;
typedef int JSON_ARRAY ;
typedef TYPE_2__ ELEMENT ;


 int AddStrToStrListDistinct (int *,char*) ;
 char* DetermineJsonSuffixForPackElement (TYPE_2__*) ;
 int Free (int **) ;
 scalar_t__ INFINITE ;
 int IsEmptyStr (char*) ;
 int * JsonArray (int *) ;
 int JsonArrayAdd (int *,int *) ;
 int * JsonNewArray () ;
 int * JsonNewObject () ;
 int JsonSet (int *,char*,int *) ;
 int * JsonValueGetObject (int *) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int MAX_PATH ;
 int * NewStrList () ;
 int PackArrayElementToJsonArray (int *,TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int PackElementToJsonObject (int *,TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int ReleaseStrList (int *) ;
 int StrCat (char*,int,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,int ) ;
 int ** ZeroMalloc (int) ;

JSON_VALUE *PackToJson(PACK *p)
{
 JSON_VALUE *v;
 JSON_OBJECT *o;
 UINT i, j, k;
 LIST *json_group_id_list;
 if (p == ((void*)0))
 {
  return JsonNewObject();
 }

 json_group_id_list = NewStrList();

 for (i = 0;i < LIST_NUM(p->elements);i++)
 {
  ELEMENT *e = LIST_DATA(p->elements, i);

  if (e->num_value >= 2 || e->JsonHint_IsArray)
  {
   if (IsEmptyStr(e->JsonHint_GroupName) == 0)
   {
    AddStrToStrListDistinct(json_group_id_list, e->JsonHint_GroupName);
   }
  }
 }

 for (i = 0;i < LIST_NUM(p->json_subitem_names);i++)
 {
  char *group_name = LIST_DATA(p->json_subitem_names, i);

  if (IsEmptyStr(group_name) == 0)
  {
   AddStrToStrListDistinct(json_group_id_list, group_name);
  }
 }

 v = JsonNewObject();
 o = JsonValueGetObject(v);

 for (k = 0;k < LIST_NUM(json_group_id_list);k++)
 {
  char *group_name = LIST_DATA(json_group_id_list, k);
  UINT array_count = INFINITE;
  bool ok = 1;

  for (i = 0;i < LIST_NUM(p->elements);i++)
  {
   ELEMENT *e = LIST_DATA(p->elements, i);

   if (e->num_value >= 2 || e->JsonHint_IsArray)
   {
    if (StrCmpi(e->JsonHint_GroupName, group_name) == 0)
    {
     if (array_count == INFINITE)
     {
      array_count = e->num_value;
     }
     else
     {
      if (array_count != e->num_value)
      {
       ok = 0;
      }
     }
    }
   }
  }

  if (array_count == INFINITE)
  {
   array_count = 0;
  }

  if (ok)
  {
   JSON_VALUE **json_objects = ZeroMalloc(sizeof(void *) * array_count);
   JSON_VALUE *jav = JsonNewArray();
   JSON_ARRAY *ja = JsonArray(jav);

   JsonSet(o, group_name, jav);

   for (j = 0;j < array_count;j++)
   {
    json_objects[j] = JsonNewObject();

    JsonArrayAdd(ja, json_objects[j]);
   }

   for (i = 0;i < LIST_NUM(p->elements);i++)
   {
    ELEMENT *e = LIST_DATA(p->elements, i);

    if (e->num_value >= 2 || e->JsonHint_IsArray)
    {
     if (StrCmpi(e->JsonHint_GroupName, group_name) == 0)
     {
      for (j = 0;j < e->num_value;j++)
      {
       PackElementToJsonObject(JsonValueGetObject(json_objects[j]),
        p, e, j);
      }
     }
    }
   }

   Free(json_objects);
  }
 }

 for (i = 0;i < LIST_NUM(p->elements);i++)
 {
  ELEMENT *e = LIST_DATA(p->elements, i);

  if (e->num_value >= 2 || e->JsonHint_IsArray)
  {
   if (IsEmptyStr(e->JsonHint_GroupName))
   {
    char *suffix = DetermineJsonSuffixForPackElement(e);

    if (suffix != ((void*)0))
    {
     JSON_VALUE *jav = JsonNewArray();
     JSON_ARRAY *ja = JsonArray(jav);
     char name[MAX_PATH];

     for (j = 0;j < e->num_value;j++)
     {
      PackArrayElementToJsonArray(ja, p, e, j);
     }

     StrCpy(name, sizeof(name), e->name);
     StrCat(name, sizeof(name), suffix);

     JsonSet(o, name, jav);
    }
   }
  }
  else if (e->num_value == 1)
  {
   PackElementToJsonObject(o, p, e, 0);
  }
 }

 ReleaseStrList(json_group_id_list);

 return v;
}
