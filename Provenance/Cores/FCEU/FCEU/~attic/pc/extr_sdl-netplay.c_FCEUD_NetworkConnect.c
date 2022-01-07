
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int Uint16 ;
struct TYPE_6__ {void* port; } ;
typedef void* TCPsocket ;
typedef TYPE_1__ IPaddress ;


 int LocalPortTCP ;
 int LocalPortUDP ;
 int RemotePortTCP ;
 void* RemotePortUDP ;
 int SDLNet_AllocSocketSet (int) ;
 int SDLNet_Init () ;
 int SDLNet_ResolveHost (TYPE_1__*,int *,int ) ;
 void* SDLNet_TCP_Accept (void**) ;
 int SDLNet_TCP_AddSocket (int ,int ) ;
 int SDLNet_TCP_GetPeerAddress (void*) ;
 void* SDLNet_TCP_Open (TYPE_1__*) ;
 int SDLNet_TCP_Recv (void*,int *,int) ;
 int SDLNet_TCP_Send (void*,int *,int) ;
 int SDLNet_UDP_AddSocket (int ,int ) ;
 int SDLNet_UDP_Bind (int ,int ,TYPE_1__*) ;
 int SDLNet_UDP_Open (int *) ;
 int SDLNet_Write32 (int *,int) ;
 int SDL_GetTicks () ;
 int * ServerHost ;
 void* Socket ;
 int TCPSocket ;
 int UDPSocket ;
 void* de32 (int *) ;
 int en32 (int *,int ) ;
 int magic ;
 int memcpy (TYPE_1__*,int ,int) ;
 int netplay ;
 int set ;
 int uport ;

int FCEUD_NetworkConnect(void)
{
 IPaddress rip;

 SDLNet_Init();

 if(netplay==1)
 {
  TCPsocket tmp;
  Uint16 p=LocalPortUDP;

  SDLNet_ResolveHost(&rip,((void*)0),LocalPortTCP);

  UDPSocket=SDLNet_UDP_Open(&p);

  tmp=SDLNet_TCP_Open(&rip);
  Socket=SDLNet_TCP_Accept(&tmp);

  memcpy(&rip,SDLNet_TCP_GetPeerAddress(Socket),sizeof(IPaddress));

  {
   uint8 buf[12];
   uint32 player=1;

   magic=SDL_GetTicks();

   SDLNet_Write32(buf,uport);
   SDLNet_Write32(buf+4,1);
   SDLNet_Write32(buf+8,magic);

   SDLNet_TCP_Send(Socket, buf, 12);


   SDLNet_TCP_Recv(Socket, buf, 2);
   RemotePortUDP=de32(buf);
  }
 }
 else
 {
  SDLNet_ResolveHost(&rip,ServerHost,RemotePortTCP);
  Socket=SDLNet_TCP_Open(&rip);

  {
   Uint16 p=LocalPortUDP;
   uint8 buf[12];

   UDPSocket=SDLNet_UDP_Open(&p);


   en32(buf,p);
   SDLNet_TCP_Send(Socket, buf, 4);


   SDLNet_TCP_Recv(Socket, buf, 12);
   RemotePortUDP=de32(buf);
   magic=de32(buf+8);
  }
  set=SDLNet_AllocSocketSet(1);
  SDLNet_TCP_AddSocket(set,TCPSocket);
  SDLNet_UDP_AddSocket(set,UDPSocket);
 }

 rip.port=RemotePortUDP;
 SDLNet_UDP_Bind(UDPSocket, 0, &rip);
}
