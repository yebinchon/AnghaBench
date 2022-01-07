
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum socket_domain { ____Placeholder_socket_domain } socket_domain ;


 int AF_INET ;
 int SCE_NET_AF_INET ;


__attribute__((used)) static int domain_get(enum socket_domain type)
{
   switch (type)
   {
      case 128:



         return AF_INET;

      default:
         break;
   }

   return 0;
}
