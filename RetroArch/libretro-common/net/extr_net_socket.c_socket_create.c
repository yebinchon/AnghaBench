
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum socket_type { ____Placeholder_socket_type } socket_type ;
typedef enum socket_protocol { ____Placeholder_socket_protocol } socket_protocol ;
typedef enum socket_domain { ____Placeholder_socket_domain } socket_domain ;


 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int SCE_NET_IPPROTO_TCP ;
 int SCE_NET_IPPROTO_UDP ;
 int SCE_NET_SOCK_DGRAM ;
 int SCE_NET_SOCK_STREAM ;






 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int domain_get (int) ;
 int sceNetSocket (char const*,int,int,int) ;
 int socket (int,int,int) ;

int socket_create(
      const char *name,
      enum socket_domain domain_type,
      enum socket_type socket_type,
      enum socket_protocol protocol_type)
{
   int type = 0;
   int protocol = 0;
   int domain = domain_get(domain_type);
   switch (socket_type)
   {
      case 130:
         type = SOCK_DGRAM;
         break;
      case 128:
         type = SOCK_STREAM;
         break;
      case 129:

         break;
   }

   switch (protocol_type)
   {
      case 133:
         protocol = 0;
         break;
      case 132:
         protocol = IPPROTO_TCP;
         break;
      case 131:
         protocol = IPPROTO_UDP;
         break;
   }

   return socket(domain, type, protocol);

}
