
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;


 int ConbinePathW (char*,size_t,char*,char*) ;
 char* CopyUtfToUni (char*) ;
 int Free (char*) ;
 char* GetCurrentPathEnvStr () ;
 scalar_t__ IsFileExistsInnerW (char*) ;
 int MAX_SIZE ;
 TYPE_1__* ParseSplitedPathW (char*) ;
 int UniFreeToken (TYPE_1__*) ;
 int UniStrCpy (char*,size_t,char*) ;
 int UnixCheckExecAccessW (char*) ;
 int UnixGetCurrentDirW (char*,size_t) ;
 int Win32GetCurrentDirW (char*,size_t) ;

void UnixGetExeNameW(wchar_t *name, UINT size, wchar_t *arg)
{
 UNI_TOKEN_LIST *t;
 char *path_str;
 wchar_t *path_str_w;
 bool ok = 0;

 if (name == ((void*)0) || arg == ((void*)0))
 {
  return;
 }

 path_str = GetCurrentPathEnvStr();
 path_str_w = CopyUtfToUni(path_str);

 t = ParseSplitedPathW(path_str_w);

 if (t != ((void*)0))
 {
  UINT i;
  for (i = 0;i < t->NumTokens;i++)
  {
   wchar_t *s = t->Token[i];
   wchar_t tmp[MAX_SIZE];

   ConbinePathW(tmp, sizeof(tmp), s, arg);

   if (IsFileExistsInnerW(tmp))
   {






    ok = 1;
    UniStrCpy(name, size, tmp);
    break;
   }
  }

  UniFreeToken(t);
 }

 Free(path_str);
 Free(path_str_w);

 if (ok == 0)
 {




  Win32GetCurrentDirW(name, size);

  ConbinePathW(name, size, name, arg);
 }
}
