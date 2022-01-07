
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {scalar_t__ type; int* ip; } ;
typedef TYPE_1__ netadr_t ;


 scalar_t__ NA_IP ;
 scalar_t__ NA_IPX ;
 scalar_t__ NA_LOOPBACK ;
 int** localIP ;
 int numIP ;
 int qfalse ;
 int qtrue ;

qboolean Sys_IsLANAddress( netadr_t adr ) {
 int i;

 if( adr.type == NA_LOOPBACK ) {
  return qtrue;
 }

 if( adr.type == NA_IPX ) {
  return qtrue;
 }

 if( adr.type != NA_IP ) {
  return qfalse;
 }




 if( adr.ip[0] == 127 && adr.ip[1] == 0 && adr.ip[2] == 0 && adr.ip[3] == 1 ) {
  return qtrue;
 }


 if( (adr.ip[0] & 0x80) == 0x00 ) {
  for ( i = 0 ; i < numIP ; i++ ) {
   if( adr.ip[0] == localIP[i][0] ) {
    return qtrue;
   }
  }

  return qfalse;
 }


 if( (adr.ip[0] & 0xc0) == 0x80 ) {
  for ( i = 0 ; i < numIP ; i++ ) {
   if( adr.ip[0] == localIP[i][0] && adr.ip[1] == localIP[i][1] ) {
    return qtrue;
   }

   if( adr.ip[0] == 172 && localIP[i][0] == 172 && (adr.ip[1] & 0xf0) == 16 && (localIP[i][1] & 0xf0) == 16 ) {
    return qtrue;
   }
  }
  return qfalse;
 }


 for ( i = 0 ; i < numIP ; i++ ) {
  if( adr.ip[0] == localIP[i][0] && adr.ip[1] == localIP[i][1] && adr.ip[2] == localIP[i][2] ) {
   return qtrue;
  }

  if( adr.ip[0] == 192 && localIP[i][0] == 192 && adr.ip[1] == 168 && localIP[i][1] == 168 ) {
   return qtrue;
  }
 }
 return qfalse;
}
