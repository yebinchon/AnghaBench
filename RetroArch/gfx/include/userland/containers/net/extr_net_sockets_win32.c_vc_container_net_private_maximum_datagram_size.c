
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int max_datagram_size ;
typedef int SOCKET_T ;


 size_t DEFAULT_MAXIMUM_DATAGRAM_SIZE ;
 int SOL_SOCKET ;
 int SO_MAX_MSG_SIZE ;
 int getsockopt (int ,int ,int ,char*,int*) ;

size_t vc_container_net_private_maximum_datagram_size( SOCKET_T sock )
{
   size_t max_datagram_size = DEFAULT_MAXIMUM_DATAGRAM_SIZE;
   int opt_size = sizeof(max_datagram_size);


   (void)getsockopt(sock, SOL_SOCKET, SO_MAX_MSG_SIZE, (char *)&max_datagram_size, &opt_size);

   return max_datagram_size;
}
