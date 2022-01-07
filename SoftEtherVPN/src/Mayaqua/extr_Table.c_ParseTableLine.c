
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef size_t UINT ;
struct TYPE_4__ {char* name; char* unistr; char* str; } ;
typedef TYPE_1__ TABLE ;
typedef int LIST ;


 size_t CalcUniToStr (char*) ;
 size_t CalcUtf8ToUni (char*,size_t) ;
 char* CopyUniStr (char*) ;
 int Free (char*) ;
 TYPE_1__* LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 void* Malloc (int) ;
 int StrCat (char*,size_t,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,size_t,char*) ;
 size_t StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;
 int TrimLeft (char*) ;
 int UnescapeStr (char*) ;
 scalar_t__ UniInChar (char*,int) ;
 int UniReplaceStrEx (char*,size_t,char*,char*,char*,int) ;
 int UniStrCpy (char*,size_t,char*) ;
 int UniStrSize (char*) ;
 int UniToStr (char*,size_t,char*) ;
 int Utf8ToUni (char*,size_t,char*,size_t) ;
 char* ZeroMalloc (size_t) ;

TABLE *ParseTableLine(char *line, char *prefix, UINT prefix_size, LIST *replace_list)
{
 UINT i, len;
 UINT len_name;
 UINT string_start;
 char *name;
 char *name2;
 UINT name2_size;
 wchar_t *unistr;
 char *str;
 UINT unistr_size, str_size;
 TABLE *t;

 if (line == ((void*)0) || prefix == ((void*)0))
 {
  return ((void*)0);
 }
 TrimLeft(line);


 len = StrLen(line);
 if (len == 0)
 {
  return ((void*)0);
 }


 if (line[0] == '#' || (line[0] == '/' && line[1] == '/'))
 {
  return ((void*)0);
 }


 len_name = 0;
 for (i = 0;;i++)
 {
  if (line[i] == 0)
  {

   return ((void*)0);
  }
  if (line[i] == ' ' || line[i] == '\t')
  {
   break;
  }
  len_name++;
 }

 name = Malloc(len_name + 1);
 StrCpy(name, len_name + 1, line);

 string_start = len_name;
 for (i = len_name;i < len;i++)
 {
  if (line[i] != ' ' && line[i] != '\t')
  {
   break;
  }
  string_start++;
 }
 if (i == len)
 {
  Free(name);
  return ((void*)0);
 }


 UnescapeStr(&line[string_start]);


 unistr_size = CalcUtf8ToUni(&line[string_start], StrLen(&line[string_start]));
 if (unistr_size == 0)
 {
  Free(name);
  return ((void*)0);
 }
 unistr = Malloc(unistr_size);
 Utf8ToUni(unistr, unistr_size, &line[string_start], StrLen(&line[string_start]));

 if (UniInChar(unistr, L'$'))
 {

  wchar_t *tmp;
  UINT tmp_size = (UniStrSize(unistr) + 1024) * 2;
  UINT i;

  tmp = Malloc(tmp_size);

  UniStrCpy(tmp, tmp_size, unistr);

  for (i = 0; i < LIST_NUM(replace_list);i++)
  {
   TABLE *r = LIST_DATA(replace_list, i);

   UniReplaceStrEx(tmp, tmp_size, tmp, (wchar_t *)r->name, r->unistr, 0);
  }

  Free(unistr);

  unistr = CopyUniStr(tmp);

  Free(tmp);
 }


 str_size = CalcUniToStr(unistr);
 if (str_size == 0)
 {
  str_size = 1;
  str = Malloc(1);
  str[0] = 0;
 }
 else
 {
  str = Malloc(str_size);
  UniToStr(str, str_size, unistr);
 }

 if (StrCmpi(name, "PREFIX") == 0)
 {

  StrCpy(prefix, prefix_size, str);
  Trim(prefix);

  if (StrCmpi(prefix, "$") == 0 || StrCmpi(prefix, "NULL") == 0)
  {
   prefix[0] = 0;
  }

  Free(name);
  Free(str);
  Free(unistr);

  return ((void*)0);
 }

 name2_size = StrLen(name) + StrLen(prefix) + 2;
 name2 = ZeroMalloc(name2_size);

 if (prefix[0] != 0)
 {
  StrCat(name2, name2_size, prefix);
  StrCat(name2, name2_size, "@");
 }

 StrCat(name2, name2_size, name);

 Free(name);


 t = Malloc(sizeof(TABLE));
 StrUpper(name2);
 t->name = name2;
 t->str = str;
 t->unistr = unistr;

 return t;
}
