
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int IPC_MSCHAP_V2_AUTHINFO ;


 char* CopyStr (char*) ;
 char* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int MAX_SIZE ;
 int MIN (scalar_t__,int) ;
 scalar_t__ MsChapV2VerityPassword (int *,char*) ;
 scalar_t__ Power (int,int ) ;
 int SetStrCaseAccordingToBits (char*,scalar_t__) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;

char *MsChapV2DoBruteForce(IPC_MSCHAP_V2_AUTHINFO *d, LIST *password_list)
{
 UINT i;

 if (d == ((void*)0) || password_list == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(password_list);i++)
 {
  char *s = LIST_DATA(password_list, i);
  char tmp[MAX_SIZE];
  UINT j, max;
  UINT len;

  StrCpy(tmp, sizeof(tmp), s);

  len = StrLen(tmp);
  max = Power(2, MIN(len, 9));

  for (j = 0;j < max;j++)
  {
   SetStrCaseAccordingToBits(tmp, j);
   if (MsChapV2VerityPassword(d, tmp))
   {
    return CopyStr(tmp);
   }
  }
 }

 return ((void*)0);
}
