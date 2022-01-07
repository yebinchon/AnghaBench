
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int* ip; void* port; void* type; } ;
typedef TYPE_1__ netadr_t ;
typedef int base ;


 void* BigShort (short) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int MAX_STRING_CHARS ;
 void* NA_BAD ;
 void* NA_LOOPBACK ;
 short PORT_SERVER ;
 int Q_strncpyz (char*,char const*,int) ;
 int Sys_StringToAdr (char*,TYPE_1__*) ;
 scalar_t__ atoi (char*) ;
 int qfalse ;
 int qtrue ;
 int strcmp (char const*,char*) ;
 char* strstr (char*,char*) ;

qboolean NET_StringToAdr( const char *s, netadr_t *a ) {
 qboolean r;
 char base[MAX_STRING_CHARS];
 char *port;

 if (!strcmp (s, "localhost")) {
  Com_Memset (a, 0, sizeof(*a));
  a->type = NA_LOOPBACK;
  return qtrue;
 }


 Q_strncpyz( base, s, sizeof( base ) );
 port = strstr( base, ":" );
 if ( port ) {
  *port = 0;
  port++;
 }

 r = Sys_StringToAdr( base, a );

 if ( !r ) {
  a->type = NA_BAD;
  return qfalse;
 }


 if ( a->ip[0] == 255 && a->ip[1] == 255 && a->ip[2] == 255 && a->ip[3] == 255 ) {
  a->type = NA_BAD;
  return qfalse;
 }

 if ( port ) {
  a->port = BigShort( (short)atoi( port ) );
 } else {
  a->port = BigShort( PORT_SERVER );
 }

 return qtrue;
}
