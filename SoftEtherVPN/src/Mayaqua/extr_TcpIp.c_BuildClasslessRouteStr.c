
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Exists; int Gateway; int SubnetMask; int Network; } ;
typedef TYPE_1__ DHCP_CLASSLESS_ROUTE ;


 int ClearStr (char*,int ) ;
 int Format (char*,int ,char*,int *,int *,int *) ;

void BuildClasslessRouteStr(char *str, UINT str_size, DHCP_CLASSLESS_ROUTE *r)
{
 ClearStr(str, str_size);

 if (str == ((void*)0) || r == ((void*)0) || r->Exists == 0)
 {
  return;
 }

 Format(str, str_size, "%r/%r/%r", &r->Network, &r->SubnetMask, &r->Gateway);
}
