
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 int LoadExtByName (char*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void ProcExtsFromExtString(const char *strExtList)
{
 size_t iExtListLen = strlen(strExtList);
 const char *strExtListEnd = strExtList + iExtListLen;
 const char *strCurrPos = strExtList;
 char strWorkBuff[256];

 while(*strCurrPos)
 {

  int iStrLen = 0;
  const char *strEndStr = strchr(strCurrPos, ' ');
  int iStop = 0;
  if(strEndStr == ((void*)0))
  {
   strEndStr = strExtListEnd;
   iStop = 1;
  }

  iStrLen = (int)((ptrdiff_t)strEndStr - (ptrdiff_t)strCurrPos);

  if(iStrLen > 255)
   return;

  strncpy(strWorkBuff, strCurrPos, iStrLen);
  strWorkBuff[iStrLen] = '\0';

  LoadExtByName(strWorkBuff);

  strCurrPos = strEndStr + 1;
  if(iStop) break;
 }
}
