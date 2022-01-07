
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;


 int WSAGetLastError () ;
 int translate_error_status (int ) ;

vc_container_net_status_t vc_container_net_private_last_error()
{
   return translate_error_status( WSAGetLastError() );
}
