
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int address ;
typedef int WSADATA ;
typedef int WORD ;


 int AF_INET ;
 int Error (char*) ;
 int GLSERV_PORT ;
 int INADDR_LOOPBACK ;
 int IPPROTO_TCP ;
 int MAKEWORD (int,int) ;
 int PF_INET ;
 int SOCK_STREAM ;
 int WSAStartup (int ,int *) ;
 int closesocket (int) ;
 int connect (int,struct sockaddr*,int) ;
 int draw_socket ;
 int htonl (int ) ;
 int socket (int ,int ,int ) ;
 int wins_init ;

void GLS_BeginScene (void)
{
 WSADATA winsockdata;
 WORD wVersionRequested;
 struct sockaddr_in address;
 int r;

 if (!wins_init)
 {
  wins_init = 1;

  wVersionRequested = MAKEWORD(1, 1);

  r = WSAStartup (MAKEWORD(1, 1), &winsockdata);

  if (r)
   Error ("Winsock initialization failed.");

 }



 draw_socket = socket (PF_INET, SOCK_STREAM, IPPROTO_TCP);
 if (draw_socket == -1)
  Error ("draw_socket failed");

 address.sin_family = AF_INET;
 address.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 address.sin_port = GLSERV_PORT;
 r = connect (draw_socket, (struct sockaddr *)&address, sizeof(address));
 if (r == -1)
 {
  closesocket (draw_socket);
  draw_socket = 0;
 }
}
