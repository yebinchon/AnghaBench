
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int IsEmptyStr (char*) ;
 int MEMBER_SELECTOR_TXT_FILENAME ;
 int * ReadDump (int ) ;
 int StrCpy (char*,int ,char*) ;
 int Trim (char*) ;

bool SiGetMemberSelectorUrl(char *url, UINT url_size)
{
 BUF *b;
 bool ret = 0;

 if (url == ((void*)0))
 {
  return 0;
 }

 b = ReadDump(MEMBER_SELECTOR_TXT_FILENAME);
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

  if (IsEmptyStr(line) == 0 && ret == 0)
  {
   StrCpy(url, url_size, line);
   ret = 1;
  }

  Free(line);
 }

 FreeBuf(b);

 return ret;
}
