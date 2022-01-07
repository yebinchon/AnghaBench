
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET_T ;


 size_t DEFAULT_MAXIMUM_DATAGRAM_SIZE ;

size_t vc_container_net_private_maximum_datagram_size( SOCKET_T sock )
{
   (void)sock;


   return DEFAULT_MAXIMUM_DATAGRAM_SIZE;
}
