
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT ;


 int CiGenerateVLanRegulatedName (char*,int,int) ;
 int MAX_SIZE ;
 scalar_t__ StrCmpi (char*,char*) ;

bool CiIsValidVLanRegulatedName(char *name)
{
 UINT i;

 if (name == ((void*)0))
 {
  return 0;
 }

 for (i = 1;i < 128;i++)
 {
  char tmp[MAX_SIZE];

  CiGenerateVLanRegulatedName(tmp, sizeof(tmp), i);

  if (StrCmpi(name, tmp) == 0)
  {
   return 1;
  }
 }

 return 0;
}
