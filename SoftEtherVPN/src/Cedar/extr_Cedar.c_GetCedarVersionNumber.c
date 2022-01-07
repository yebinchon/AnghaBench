
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int CEDAR_VERSION_MAJOR ;
 scalar_t__ CEDAR_VERSION_MINOR ;

UINT GetCedarVersionNumber()
{
 return CEDAR_VERSION_MAJOR * 100 + CEDAR_VERSION_MINOR;
}
