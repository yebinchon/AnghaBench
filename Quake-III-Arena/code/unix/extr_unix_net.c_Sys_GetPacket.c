
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int qboolean ;
typedef int netadr_t ;
struct TYPE_3__ {int maxsize; int cursize; scalar_t__ readcount; int data; } ;
typedef TYPE_1__ msg_t ;
typedef int from ;


 int Com_Printf (char*,int ,...) ;
 int ECONNREFUSED ;
 int EWOULDBLOCK ;
 int NET_AdrToString (int ) ;
 int NET_ErrorString () ;
 int SockadrToNetadr (struct sockaddr_in*,int *) ;
 int errno ;
 int ip_socket ;
 int ipx_socket ;
 int qfalse ;
 int qtrue ;
 int recvfrom (int,int ,int,int ,struct sockaddr*,int*) ;

qboolean Sys_GetPacket (netadr_t *net_from, msg_t *net_message)
{
 int ret;
 struct sockaddr_in from;
 int fromlen;
 int net_socket;
 int protocol;
 int err;

 for (protocol = 0 ; protocol < 2 ; protocol++)
 {
  if (protocol == 0)
   net_socket = ip_socket;
  else
   net_socket = ipx_socket;

  if (!net_socket)
   continue;

  fromlen = sizeof(from);
  ret = recvfrom (net_socket, net_message->data, net_message->maxsize
   , 0, (struct sockaddr *)&from, &fromlen);

  SockadrToNetadr (&from, net_from);

  net_message->readcount = 0;

  if (ret == -1)
  {
   err = errno;

   if (err == EWOULDBLOCK || err == ECONNREFUSED)
    continue;
   Com_Printf ("NET_GetPacket: %s from %s\n", NET_ErrorString(),
      NET_AdrToString(*net_from));
   continue;
  }

  if (ret == net_message->maxsize)
  {
   Com_Printf ("Oversize packet from %s\n", NET_AdrToString (*net_from));
   continue;
  }

  net_message->cursize = ret;
  return qtrue;
 }

 return qfalse;
}
