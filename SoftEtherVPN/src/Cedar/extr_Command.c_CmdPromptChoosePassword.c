
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int CONSOLE ;


 char* CmdPasswordPrompt (int *) ;
 int * CopyStrToUni (char*) ;
 int Free (char*) ;

wchar_t *CmdPromptChoosePassword(CONSOLE *c, void *param)
{
 char *s;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 s = CmdPasswordPrompt(c);

 if (s == ((void*)0))
 {
  return ((void*)0);
 }
 else
 {
  wchar_t *ret = CopyStrToUni(s);

  Free(s);

  return ret;
 }
}
