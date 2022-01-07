
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int KS_INC (int ) ;
 int KS_STRLEN_COUNT ;
 int strlen (char*) ;

UINT StrLen(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_STRLEN_COUNT);

 return (UINT)strlen(str);
}
