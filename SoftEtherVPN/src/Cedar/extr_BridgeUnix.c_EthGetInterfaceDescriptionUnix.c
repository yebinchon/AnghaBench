
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Format (char*,int,char*,char*) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int * ReadDump (char*) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int Trim (char*) ;

bool EthGetInterfaceDescriptionUnix(char *name, char *str, UINT size)
{
 char tmp[MAX_SIZE];
 bool ret = 0;
 BUF *b;

 if (name == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 StrCpy(str, size, name);

 Format(tmp, sizeof(tmp), "/etc/sysconfig/networking/devices/ifcfg-%s", name);

 b = ReadDump(tmp);
 if (b != ((void*)0))
 {
  char *line = CfgReadNextLine(b);

  if (IsEmptyStr(line) == 0)
  {
   if (StartWith(line, "#"))
   {
    char tmp[MAX_SIZE];

    StrCpy(tmp, sizeof(tmp), line + 1);

    Trim(tmp);
    tmp[60] = 0;

    StrCpy(str, size, tmp);

    ret = 1;
   }
  }

  Free(line);

  FreeBuf(b);
 }

 return ret;
}
