
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
struct TYPE_6__ {scalar_t__ Exists; } ;
struct TYPE_5__ {TYPE_2__* Entries; } ;
typedef TYPE_1__ DHCP_CLASSLESS_ROUTE_TABLE ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE ;


 int BuildClasslessRouteStr (char*,int,TYPE_2__*) ;
 int ClearStr (char*,size_t) ;
 int IsEmptyStr (char*) ;
 size_t MAX_DHCP_CLASSLESS_ROUTE_ENTRIES ;
 int StrCat (char*,size_t,char*) ;
 int Zero (char*,int) ;

void BuildClasslessRouteTableStr(char *str, UINT str_size, DHCP_CLASSLESS_ROUTE_TABLE *t)
{
 UINT i;
 UINT num = 0;
 ClearStr(str, str_size);

 if (str == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 for (i = 0;i < MAX_DHCP_CLASSLESS_ROUTE_ENTRIES;i++)
 {
  DHCP_CLASSLESS_ROUTE *r = &t->Entries[i];

  if (r->Exists)
  {
   char tmp[128];

   Zero(tmp, sizeof(tmp));
   BuildClasslessRouteStr(tmp, sizeof(tmp), r);

   if (IsEmptyStr(tmp) == 0)
   {
    if (num >= 1)
    {
     StrCat(str, str_size, ", ");
    }

    StrCat(str, str_size, tmp);

    num++;
   }
  }
 }
}
