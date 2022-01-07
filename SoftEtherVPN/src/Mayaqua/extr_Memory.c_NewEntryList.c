
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int value ;
typedef int key ;
typedef size_t UINT ;
struct TYPE_8__ {void* Value; void* Key; } ;
struct TYPE_7__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef TYPE_2__ INI_ENTRY ;


 int Add (int *,TYPE_2__*) ;
 void* CopyStr (char*) ;
 int FreeToken (TYPE_1__*) ;
 scalar_t__ GetKeyAndValue (char*,char*,int,char*,int,char*) ;
 int MAX_SIZE ;
 int * NewListFast (int *) ;
 TYPE_1__* ParseTokenWithoutNullStr (char*,char*) ;
 int Trim (char*) ;
 TYPE_2__* ZeroMalloc (int) ;

LIST *NewEntryList(char *src, char *key_separator, char *value_separator)
{
 LIST *o = NewListFast(((void*)0));
 TOKEN_LIST *t;

 t = ParseTokenWithoutNullStr(src, key_separator);
 if (t != ((void*)0))
 {
  UINT i;

  for (i = 0; i < t->NumTokens; i++)
  {
   char key[MAX_SIZE];
   char value[MAX_SIZE];
   char *line = t->Token[i];
   Trim(line);

   if (GetKeyAndValue(line, key, sizeof(key), value, sizeof(value), value_separator))
   {
    INI_ENTRY *e = ZeroMalloc(sizeof(INI_ENTRY));

    e->Key = CopyStr(key);
    e->Value = CopyStr(value);

    Add(o, e);
   }
  }

  FreeToken(t);
 }

 return o;
}
