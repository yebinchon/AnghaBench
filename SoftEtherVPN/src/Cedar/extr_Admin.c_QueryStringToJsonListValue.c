
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 scalar_t__ AddStrToStrListDistinct (int *,char*) ;
 char* CopyStr (char*) ;
 int Free (char*) ;
 int FreeStrList (int *) ;
 int FreeToken (TYPE_1__*) ;
 size_t INFINITE ;
 int * JsonNewObject () ;
 int JsonSetStr (int *,char*,char*) ;
 int * JsonValueGetObject (int *) ;
 int * NewStrList () ;
 TYPE_1__* ParseTokenWithoutNullStr (char*,char*) ;
 size_t SearchStr (char*,char*,int ) ;
 char* UrlDecode (char*) ;

JSON_VALUE *QueryStringToJsonListValue(char *qs)
{
 TOKEN_LIST *t;
 UINT i;
 LIST *distinct_list = ((void*)0);
 JSON_VALUE *v = ((void*)0);
 JSON_OBJECT *o = ((void*)0);
 if (qs == ((void*)0))
 {
  return ((void*)0);
 }

 t = ParseTokenWithoutNullStr(qs, "&");
 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 distinct_list = NewStrList();

 v = JsonNewObject();
 o = JsonValueGetObject(v);

 for (i = 0;i < t->NumTokens;i++)
 {
  char *token = t->Token[i];
  UINT pos;

  pos = SearchStr(token, "=", 0);
  if (pos != INFINITE)
  {
   char *key_decoded;
   char *value_decoded;
   char *key = CopyStr(token);
   char *value = CopyStr(token + pos + 1);

   key[pos] = 0;
   key_decoded = UrlDecode(key);
   value_decoded = UrlDecode(value);

   if (key_decoded != ((void*)0) && value_decoded != ((void*)0))
   {
    if (AddStrToStrListDistinct(distinct_list, key_decoded))
    {
     JsonSetStr(o, key_decoded, value_decoded);
    }
   }

   Free(value_decoded);
   Free(key_decoded);
   Free(key);
   Free(value);
  }
 }

 FreeToken(t);

 FreeStrList(distinct_list);

 return v;
}
