
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UNI_TOKEN_LIST ;
typedef int TOKEN_LIST ;


 int * EnumDirWithSubDirsW (int *) ;
 int MAX_SIZE ;
 int StrToUni (int *,int,char*) ;
 int UniFreeToken (int *) ;
 int * UniTokenListToTokenList (int *) ;

TOKEN_LIST *EnumDirWithSubDirs(char *dirname)
{
 TOKEN_LIST *ret;
 UNI_TOKEN_LIST *ret2;
 wchar_t tmp[MAX_SIZE];

 if (dirname == ((void*)0))
 {
  dirname = "./";
 }

 StrToUni(tmp, sizeof(tmp), dirname);

 ret2 = EnumDirWithSubDirsW(tmp);

 ret = UniTokenListToTokenList(ret2);

 UniFreeToken(ret2);

 return ret;
}
