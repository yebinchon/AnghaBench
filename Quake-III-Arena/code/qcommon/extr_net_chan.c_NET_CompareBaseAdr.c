
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ type; scalar_t__* ip; int ipx; } ;
typedef TYPE_1__ netadr_t ;


 int Com_Printf (char*) ;
 scalar_t__ NA_IP ;
 scalar_t__ NA_IPX ;
 scalar_t__ NA_LOOPBACK ;
 scalar_t__ memcmp (int ,int ,int) ;
 int qfalse ;
 int qtrue ;

qboolean NET_CompareBaseAdr (netadr_t a, netadr_t b)
{
 if (a.type != b.type)
  return qfalse;

 if (a.type == NA_LOOPBACK)
  return qtrue;

 if (a.type == NA_IP)
 {
  if (a.ip[0] == b.ip[0] && a.ip[1] == b.ip[1] && a.ip[2] == b.ip[2] && a.ip[3] == b.ip[3])
   return qtrue;
  return qfalse;
 }

 if (a.type == NA_IPX)
 {
  if ((memcmp(a.ipx, b.ipx, 10) == 0))
   return qtrue;
  return qfalse;
 }


 Com_Printf ("NET_CompareBaseAdr: bad address type\n");
 return qfalse;
}
