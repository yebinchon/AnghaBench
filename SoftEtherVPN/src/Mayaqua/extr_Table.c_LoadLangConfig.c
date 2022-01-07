
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int InStr (char*,char*) ;
 int IsEmptyStr (char*) ;
 int * ReadDumpW (int *) ;
 int StartWith (char*,char*) ;
 int StrCpy (char*,int ,char*) ;
 int Trim (char*) ;

bool LoadLangConfig(wchar_t *filename, char *str, UINT str_size)
{
 BUF *b;
 bool ret = 0;

 if (filename == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 b = ReadDumpW(filename);
 if (b == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  char *line = CfgReadNextLine(b);

  if (line == ((void*)0))
  {
   break;
  }

  Trim(line);

  if (IsEmptyStr(line) == 0)
  {
   if (StartWith(line, "#") == 0 && StartWith(line, "//") == 0 && StartWith(line, ";") == 0 &&
    InStr(line, "#") == 0)
   {
    StrCpy(str, str_size, line);
    ret = 1;
   }
  }

  Free(line);
 }

 FreeBuf(b);

 return ret;
}
