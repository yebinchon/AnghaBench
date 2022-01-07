
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int CopyStr (char*) ;
 int CopyStrToUni (int ) ;
 int CopyUniToStr (int ) ;
 int CopyUtfToUni (char*) ;
 int Free (char*) ;
 scalar_t__ INFINITE ;
 int ReplaceStrEx (char*,int,char*,char*,char*,int) ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 int SetCommandLineStr (char*) ;
 int StrCat (char*,int,char*) ;
 int StrLen (char*) ;
 int Trim (char*) ;
 char* ZeroMalloc (int) ;
 int exename ;
 int exename_w ;

void InitCommandLineStr(int argc, char **argv)
{
 if (argc >= 1)
 {




  exename = CopyStr(argv[0]);
  exename_w = CopyStrToUni(exename);

 }
 if (argc < 2 || argv == ((void*)0))
 {

  SetCommandLineStr(((void*)0));
 }
 else
 {

  int i, total_len = 1;
  char *tmp;

  for (i = 1;i < argc;i++)
  {
   total_len += StrLen(argv[i]) * 2 + 32;
  }
  tmp = ZeroMalloc(total_len);

  for (i = 1;i < argc;i++)
  {
   UINT s_size = StrLen(argv[i]) * 2;
   char *s = ZeroMalloc(s_size);
   bool dq = (SearchStrEx(argv[i], " ", 0, 1) != INFINITE);
   ReplaceStrEx(s, s_size, argv[i], "\"", "\"\"", 1);
   if (dq)
   {
    StrCat(tmp, total_len, "\"");
   }
   StrCat(tmp, total_len, s);
   if (dq)
   {
    StrCat(tmp, total_len, "\"");
   }
   StrCat(tmp, total_len, " ");
   Free(s);
  }

  Trim(tmp);
  SetCommandLineStr(tmp);
  Free(tmp);
 }
}
