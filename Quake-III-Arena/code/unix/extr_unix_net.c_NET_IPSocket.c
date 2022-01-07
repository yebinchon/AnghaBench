
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int qboolean ;
typedef int i ;
typedef int address ;


 int AF_INET ;
 int Com_Printf (char*,...) ;
 int FIONBIO ;
 int INADDR_ANY ;
 int IPPROTO_UDP ;
 int NET_ErrorString () ;
 int PF_INET ;
 int PORT_ANY ;
 int Q_stricmp (char*,char*) ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int Sys_StringToSockaddr (char*,struct sockaddr*) ;
 int bind (int,void*,int) ;
 int close (int) ;
 scalar_t__ htons (short) ;
 int ioctl (int,int ,int *) ;
 int qtrue ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;

int NET_IPSocket (char *net_interface, int port)
{
 int newsocket;
 struct sockaddr_in address;
 qboolean _qtrue = qtrue;
 int i = 1;

 if ( net_interface ) {
  Com_Printf("Opening IP socket: %s:%i\n", net_interface, port );
 } else {
  Com_Printf("Opening IP socket: localhost:%i\n", port );
 }

 if ((newsocket = socket (PF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
 {
  Com_Printf ("ERROR: UDP_OpenSocket: socket: %s", NET_ErrorString());
  return 0;
 }


 if (ioctl (newsocket, FIONBIO, &_qtrue) == -1)
 {
  Com_Printf ("ERROR: UDP_OpenSocket: ioctl FIONBIO:%s\n", NET_ErrorString());
  return 0;
 }


 if (setsockopt(newsocket, SOL_SOCKET, SO_BROADCAST, (char *)&i, sizeof(i)) == -1)
 {
  Com_Printf ("ERROR: UDP_OpenSocket: setsockopt SO_BROADCAST:%s\n", NET_ErrorString());
  return 0;
 }

 if (!net_interface || !net_interface[0] || !Q_stricmp(net_interface, "localhost"))
  address.sin_addr.s_addr = INADDR_ANY;
 else
  Sys_StringToSockaddr (net_interface, (struct sockaddr *)&address);

 if (port == PORT_ANY)
  address.sin_port = 0;
 else
  address.sin_port = htons((short)port);

 address.sin_family = AF_INET;

 if( bind (newsocket, (void *)&address, sizeof(address)) == -1)
 {
  Com_Printf ("ERROR: UDP_OpenSocket: bind: %s\n", NET_ErrorString());
  close (newsocket);
  return 0;
 }

 return newsocket;
}
