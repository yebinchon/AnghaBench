
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASESENSITIVITYDEFAULTVALUE ;
 int STRCMPCASENOSENTIVEFUNCTION (char const*,char const*) ;
 int strcmp (char const*,char const*) ;

extern int unzStringFileNameCompare (const char* fileName1,const char* fileName2,int iCaseSensitivity)
{
 if (iCaseSensitivity==0)
  iCaseSensitivity=CASESENSITIVITYDEFAULTVALUE;

 if (iCaseSensitivity==1)
  return strcmp(fileName1,fileName2);

 return STRCMPCASENOSENTIVEFUNCTION(fileName1,fileName2);
}
