
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int r ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {size_t NumExistingRoutes; int * Entries; } ;
struct TYPE_10__ {scalar_t__ NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE_TABLE ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE ;


 int Copy (int *,TYPE_2__*,int) ;
 int FreeToken (TYPE_1__*) ;
 size_t MAX_DHCP_CLASSLESS_ROUTE_ENTRIES ;
 scalar_t__ ParseClasslessRouteStr (TYPE_2__*,int ) ;
 TYPE_1__* ParseTokenWithoutNullStr (char*,int *) ;
 int Zero (TYPE_2__*,int) ;

bool ParseClasslessRouteTableStr(DHCP_CLASSLESS_ROUTE_TABLE *d, char *str)
{
 bool ret = 1;
 TOKEN_LIST *t;

 if (d == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 Zero(d, sizeof(DHCP_CLASSLESS_ROUTE_TABLE));

 t = ParseTokenWithoutNullStr(str, ((void*)0));

 if (t != ((void*)0))
 {
  UINT i;

  for (i = 0;i < t->NumTokens;i++)
  {
   DHCP_CLASSLESS_ROUTE r;

   Zero(&r, sizeof(r));
   if (ParseClasslessRouteStr(&r, t->Token[i]))
   {
    if (d->NumExistingRoutes < MAX_DHCP_CLASSLESS_ROUTE_ENTRIES)
    {
     Copy(&d->Entries[d->NumExistingRoutes], &r, sizeof(DHCP_CLASSLESS_ROUTE));
     d->NumExistingRoutes++;
    }
    else
    {

     ret = 0;
     break;
    }
   }
   else
   {

    ret = 0;
    break;
   }
  }
 }

 FreeToken(t);

 return ret;
}
