
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int CEDAR_VERSION_BUILD ;
 int CEDAR_VERSION_MAJOR ;
 int CEDAR_VERSION_MINOR ;
 int Format (char*,int ,char*,int ,int ,int ) ;

void GetCedarVersion(char *tmp, UINT size)
{

 if (tmp == ((void*)0))
 {
  return;
 }

 Format(tmp, size, "%u.%02u.%u", CEDAR_VERSION_MAJOR, CEDAR_VERSION_MINOR, CEDAR_VERSION_BUILD);
}
