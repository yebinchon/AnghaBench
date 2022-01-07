
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int iplist_final ;
typedef int ip ;
typedef int byte ;
struct TYPE_2__ {int compare; unsigned int mask; } ;


 int Com_Printf (char*) ;
 int MAX_CVAR_VALUE_STRING ;
 int Q_strcat (char*,int,char*) ;
 TYPE_1__* ipFilters ;
 int numIPFilters ;
 int strlen (char*) ;
 int trap_Cvar_Set (char*,char*) ;
 char* va (char*,int) ;

__attribute__((used)) static void UpdateIPBans (void)
{
 byte b[4];
 byte m[4];
 int i,j;
 char iplist_final[MAX_CVAR_VALUE_STRING];
 char ip[64];

 *iplist_final = 0;
 for (i = 0 ; i < numIPFilters ; i++)
 {
  if (ipFilters[i].compare == 0xffffffff)
   continue;

  *(unsigned *)b = ipFilters[i].compare;
  *(unsigned *)m = ipFilters[i].mask;
  *ip = 0;
  for (j = 0 ; j < 4 ; j++)
  {
   if (m[j]!=255)
    Q_strcat(ip, sizeof(ip), "*");
   else
    Q_strcat(ip, sizeof(ip), va("%i", b[j]));
   Q_strcat(ip, sizeof(ip), (j<3) ? "." : " ");
  }
  if (strlen(iplist_final)+strlen(ip) < MAX_CVAR_VALUE_STRING)
  {
   Q_strcat( iplist_final, sizeof(iplist_final), ip);
  }
  else
  {
   Com_Printf("g_banIPs overflowed at MAX_CVAR_VALUE_STRING\n");
   break;
  }
 }

 trap_Cvar_Set( "g_banIPs", iplist_final );
}
