
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int qboolean ;
typedef int netadr_t ;


 int SockadrToNetadr (struct sockaddr*,int *) ;
 int Sys_StringToSockaddr (char const*,struct sockaddr*) ;
 int qfalse ;
 int qtrue ;

qboolean Sys_StringToAdr( const char *s, netadr_t *a ) {
 struct sockaddr sadr;

 if ( !Sys_StringToSockaddr( s, &sadr ) ) {
  return qfalse;
 }

 SockadrToNetadr( &sadr, a );
 return qtrue;
}
