
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int replace_name ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int IsEmptyStr (char*) ;
 int LoadTableMain (int *) ;
 int MAX_PATH ;
 int * ReadDump (char*) ;
 int StrToUni (int *,int,char*) ;
 int Zero (int *,int) ;

bool LoadTableW(wchar_t *filename)
{
 bool ret;
 BUF *b;
 wchar_t replace_name[MAX_PATH];

 Zero(replace_name, sizeof(replace_name));

 b = ReadDump("@table_name.txt");
 if (b != ((void*)0))
 {
  char *s = CfgReadNextLine(b);
  if (s != ((void*)0))
  {
   if (IsEmptyStr(s) == 0)
   {
    StrToUni(replace_name, sizeof(replace_name), s);
    filename = replace_name;
   }

   Free(s);
  }
  FreeBuf(b);
 }

 ret = LoadTableMain(filename);

 return ret;
}
