
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Format (char*,int,char*,int) ;
 int StrCpy (char*,int,char*) ;

void CiGenerateVLanRegulatedName(char *name, UINT size, UINT i)
{

 if (name == ((void*)0))
 {
  return;
 }

 if (i == 1)
 {
  StrCpy(name, size, "VPN");
 }
 else
 {
  Format(name, size, "VPN%u", i);
 }
}
