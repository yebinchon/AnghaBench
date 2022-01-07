
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HUB ;


 int GetHubAdminOptionEx (int *,char*,int ) ;

UINT GetHubAdminOption(HUB *h, char *name)
{
 return GetHubAdminOptionEx(h, name, 0);
}
