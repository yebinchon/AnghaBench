
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int str ;
struct TYPE_4__ {scalar_t__ mask; int compare; } ;
typedef TYPE_1__ ipFilter_t ;
struct TYPE_5__ {scalar_t__ mask; int compare; } ;


 int G_Printf (char*,...) ;
 int MAX_TOKEN_CHARS ;
 int StringToFilter (char*,TYPE_1__*) ;
 int UpdateIPBans () ;
 TYPE_2__* ipFilters ;
 int numIPFilters ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;

void Svcmd_RemoveIP_f (void)
{
 ipFilter_t f;
 int i;
 char str[MAX_TOKEN_CHARS];

 if ( trap_Argc() < 2 ) {
  G_Printf("Usage:  sv removeip <ip-mask>\n");
  return;
 }

 trap_Argv( 1, str, sizeof( str ) );

 if (!StringToFilter (str, &f))
  return;

 for (i=0 ; i<numIPFilters ; i++) {
  if (ipFilters[i].mask == f.mask &&
   ipFilters[i].compare == f.compare) {
   ipFilters[i].compare = 0xffffffffu;
   G_Printf ("Removed.\n");

   UpdateIPBans();
   return;
  }
 }

 G_Printf ( "Didn't find %s.\n", str );
}
