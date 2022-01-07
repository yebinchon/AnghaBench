
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VALUE ;
typedef int UINT ;
struct TYPE_4__ {int num_value; int type; int ** values; int name; } ;
typedef TYPE_1__ ELEMENT ;


 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

ELEMENT *NewElement(char *name, UINT type, UINT num_value, VALUE **values)
{
 ELEMENT *e;
 UINT i;

 if (name == ((void*)0) || num_value == 0 || values == ((void*)0))
 {
  return ((void*)0);
 }


 e = ZeroMalloc(sizeof(ELEMENT));
 StrCpy(e->name, sizeof(e->name), name);
 e->num_value = num_value;
 e->type = type;


 e->values = (VALUE **)ZeroMalloc(sizeof(VALUE *) * num_value);
 for (i = 0;i < e->num_value;i++)
 {
  e->values[i] = values[i];
 }

 return e;
}
