
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET_T ;


 int closesocket (int ) ;

void vc_container_net_private_close( SOCKET_T sock )
{
   closesocket(sock);
}
