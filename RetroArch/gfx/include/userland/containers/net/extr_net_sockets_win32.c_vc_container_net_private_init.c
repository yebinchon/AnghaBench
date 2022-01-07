
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 int VC_CONTAINER_NET_SUCCESS ;
 int WSAStartup (int ,int *) ;
 int translate_error_status (int) ;

vc_container_net_status_t vc_container_net_private_init()
{
   WSADATA wsa_data;
   int result;

   result = WSAStartup(MAKEWORD(2,2), &wsa_data);
   if (result)
      return translate_error_status( result );

   return VC_CONTAINER_NET_SUCCESS;
}
