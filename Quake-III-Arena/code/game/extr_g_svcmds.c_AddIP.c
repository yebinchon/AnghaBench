
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compare; } ;


 int G_Printf (char*) ;
 int MAX_IPFILTERS ;
 int StringToFilter (char*,TYPE_1__*) ;
 int UpdateIPBans () ;
 TYPE_1__* ipFilters ;
 int numIPFilters ;

__attribute__((used)) static void AddIP( char *str )
{
 int i;

 for (i = 0 ; i < numIPFilters ; i++)
  if (ipFilters[i].compare == 0xffffffff)
   break;
 if (i == numIPFilters)
 {
  if (numIPFilters == MAX_IPFILTERS)
  {
   G_Printf ("IP filter list is full\n");
   return;
  }
  numIPFilters++;
 }

 if (!StringToFilter (str, &ipFilters[i]))
  ipFilters[i].compare = 0xffffffffu;

 UpdateIPBans();
}
