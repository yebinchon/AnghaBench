
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef scalar_t__ UINT ;


 char* ADMINISTRATOR_USERNAME ;
 char* BRIDGE_USER_NAME ;
 char* BRIDGE_USER_NAME_PRINT ;
 int IsSafeChar (char) ;
 int L3_USERNAME ;
 char* LINK_USER_NAME ;
 char* LINK_USER_NAME_PRINT ;
 int MAX_SIZE ;
 char* SNAT_USER_NAME ;
 char* SNAT_USER_NAME_PRINT ;
 scalar_t__ StartWith (char*,int ) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 int Trim (char*) ;

bool IsUserName(char *name)
{
 UINT i, len;
 char tmp[MAX_SIZE];

 if (name == ((void*)0))
 {
  return 0;
 }

 StrCpy(tmp, sizeof(tmp), name);
 name = tmp;

 Trim(name);

 len = StrLen(name);
 if (len == 0)
 {
  return 0;
 }

 if (StrCmpi(name, "*") == 0)
 {
  return 1;
 }

 for (i = 0; i < len; i++)
 {
  if (IsSafeChar(name[i]) == 0 && name[i] != '@')
  {
   return 0;
  }
 }

 if (StrCmpi(name, LINK_USER_NAME) == 0)
 {
  return 0;
 }

 if (StartWith(name, L3_USERNAME))
 {
  return 0;
 }

 if (StrCmpi(name, LINK_USER_NAME_PRINT) == 0)
 {
  return 0;
 }

 if (StrCmpi(name, SNAT_USER_NAME) == 0)
 {
  return 0;
 }

 if (StrCmpi(name, SNAT_USER_NAME_PRINT) == 0)
 {
  return 0;
 }

 if (StrCmpi(name, BRIDGE_USER_NAME) == 0)
 {
  return 0;
 }

 if (StrCmpi(name, BRIDGE_USER_NAME_PRINT) == 0)
 {
  return 0;
 }

 if (StrCmpi(name, ADMINISTRATOR_USERNAME) == 0)
 {
  return 0;
 }

 return 1;
}
