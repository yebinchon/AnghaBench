
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int tmp ;
typedef int CONSOLE ;


 int ConsoleWriteOutFile (int *,char*,int) ;
 char* CopyStr (char*) ;
 scalar_t__ PasswordPrompt (char*,int) ;
 int UniPrint (char*,char*) ;
 char* _UU (char*) ;

char *ConsoleLocalReadPassword(CONSOLE *c, wchar_t *prompt)
{
 char tmp[64];

 if (c == ((void*)0))
 {
  return ((void*)0);
 }
 if (prompt == ((void*)0))
 {
  prompt = L"Password>";
 }

 UniPrint(L"%s", prompt);
 ConsoleWriteOutFile(c, prompt, 0);

 if (PasswordPrompt(tmp, sizeof(tmp)))
 {
  ConsoleWriteOutFile(c, L"********", 1);
  return CopyStr(tmp);
 }
 else
 {
  ConsoleWriteOutFile(c, _UU("CON_USER_CANCEL"), 1);
  return ((void*)0);
 }
}
