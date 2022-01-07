
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
struct TYPE_10__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int UINT ;
struct TYPE_12__ {int (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_11__ {int NumTokens; char** Token; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef int LIST ;
typedef TYPE_3__ CONSOLE ;


 int * CompareCandidateStr ;
 int Format (char*,int,char*,char*) ;
 int Free (char*) ;
 int GetCommandHelpStr (char*,char**,int *,int *) ;
 int GetCommandParamHelpStr (char*,char*,char**) ;
 int GetConsoleWidth (TYPE_3__*) ;
 int Insert (int *,char*) ;
 char* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 int MAX (int,int) ;
 char* MakeCharArray (char,int) ;
 char* Malloc (int) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 TYPE_1__* SeparateStringByWidth (char*,int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrWidth (char*) ;
 int UniFormat (char*,int,char*,char*,char*,char*,...) ;
 int UniFreeToken (TYPE_1__*) ;
 int stub1 (TYPE_3__*,char*) ;

void PrintCandidateHelp(CONSOLE *c, char *cmd_name, TOKEN_LIST *candidate_list, UINT left_space)
{
 UINT console_width;
 UINT max_keyword_width;
 LIST *o;
 UINT i;
 wchar_t *tmpbuf;
 UINT tmpbuf_size;
 char *left_space_array;
 char *max_space_array;

 if (c == ((void*)0) || candidate_list == ((void*)0))
 {
  return;
 }


 console_width = GetConsoleWidth(c) - 1;

 tmpbuf_size = sizeof(wchar_t) * (console_width + 32);
 tmpbuf = Malloc(tmpbuf_size);

 left_space_array = MakeCharArray(' ', left_space);



 o = NewListFast(cmd_name == ((void*)0) ? CompareCandidateStr : ((void*)0));

 max_keyword_width = 0;

 for (i = 0;i < candidate_list->NumTokens;i++)
 {
  UINT keyword_width;


  Insert(o, candidate_list->Token[i]);

  keyword_width = StrWidth(candidate_list->Token[i]);
  if (cmd_name != ((void*)0))
  {
   if (candidate_list->Token[i][0] != '[')
   {
    keyword_width += 1;
   }
   else
   {
    keyword_width -= 2;
   }
  }

  max_keyword_width = MAX(max_keyword_width, keyword_width);
 }

 max_space_array = MakeCharArray(' ', max_keyword_width);


 for (i = 0;i < LIST_NUM(o);i++)
 {
  char tmp[128];
  char *name = LIST_DATA(o, i);
  UNI_TOKEN_LIST *t;
  wchar_t *help;
  UINT j;
  UINT keyword_start_width = left_space;
  UINT descript_start_width = left_space + max_keyword_width + 1;
  UINT descript_width;
  char *space;

  if (console_width >= (descript_start_width + 5))
  {
   descript_width = console_width - descript_start_width - 3;
  }
  else
  {
   descript_width = 2;
  }


  if (cmd_name != ((void*)0) && name[0] != '[')
  {

   Format(tmp, sizeof(tmp), "/%s", name);
  }
  else
  {

   if (cmd_name == ((void*)0))
   {
    StrCpy(tmp, sizeof(tmp), name);
   }
   else
   {
    StrCpy(tmp, sizeof(tmp), name + 1);
    if (StrLen(tmp) >= 1)
    {
     tmp[StrLen(tmp) - 1] = 0;
    }
   }
  }


  if (cmd_name == ((void*)0))
  {
   GetCommandHelpStr(name, &help, ((void*)0), ((void*)0));
  }
  else
  {
   GetCommandParamHelpStr(cmd_name, name, &help);
  }

  space = MakeCharArray(' ', max_keyword_width - StrWidth(name) - (cmd_name == ((void*)0) ? 0 : (name[0] != '[' ? 1 : -2)));

  t = SeparateStringByWidth(help, descript_width);

  for (j = 0;j < t->NumTokens;j++)
  {
   if (j == 0)
   {
    UniFormat(tmpbuf, tmpbuf_size, L"%S%S%S - %s",
     left_space_array, tmp, space, t->Token[j]);
   }
   else
   {
    UniFormat(tmpbuf, tmpbuf_size, L"%S%S   %s",
     left_space_array, max_space_array, t->Token[j]);
   }

   c->Write(c, tmpbuf);
  }

  Free(space);

  UniFreeToken(t);
 }

 ReleaseList(o);

 Free(max_space_array);
 Free(tmpbuf);
 Free(left_space_array);
}
