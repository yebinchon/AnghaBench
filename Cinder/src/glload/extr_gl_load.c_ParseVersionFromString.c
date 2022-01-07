
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;


 int atoi (char*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void ParseVersionFromString(int *pOutMajor, int *pOutMinor, const char *strVersion)
{
 const char *strDotPos = ((void*)0);
 int iLength = 0;
 char strWorkBuff[10];
 *pOutMinor = 0;
 *pOutMajor = 0;

 strDotPos = strchr(strVersion, '.');
 if(!strDotPos)
  return;

 iLength = (int)((ptrdiff_t)strDotPos - (ptrdiff_t)strVersion);
 strncpy(strWorkBuff, strVersion, iLength);
 strWorkBuff[iLength] = '\0';

 *pOutMajor = atoi(strWorkBuff);
 strDotPos = strchr(strVersion + iLength + 1, ' ');
 if(!strDotPos)
 {

  strcpy(strWorkBuff, strVersion + iLength + 1);
 }
 else
 {

  int iLengthMinor = (int)((ptrdiff_t)strDotPos - (ptrdiff_t)strVersion);
  iLengthMinor = iLengthMinor - (iLength + 1);
  strncpy(strWorkBuff, strVersion + iLength + 1, iLengthMinor);
  strWorkBuff[iLengthMinor] = '\0';
 }

 *pOutMinor = atoi(strWorkBuff);
}
