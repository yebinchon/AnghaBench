
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int UINT ;


 int CalcStrToUni (char*) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int StrLen (char*) ;
 int UniStrCpy (char*,int,char*) ;
 int UnixStrToUni (char*,int,char*) ;
 int mbstowcs (char*,char*,int ) ;

UINT StrToUni(wchar_t *s, UINT size, char *str)
{
 return UnixStrToUni(s, size, str);

}
