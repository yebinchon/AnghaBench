
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int memset (int *,int ,int) ;
 int vc_container_assert (int ) ;

__attribute__((used)) static void socket_clear_address(struct sockaddr *p_addr)
{
   switch (p_addr->sa_family)
   {
   case 129:
      {
         struct sockaddr_in *p_addr_v4 = (struct sockaddr_in *)p_addr;

         memset(&p_addr_v4->sin_addr, 0, sizeof(p_addr_v4->sin_addr));
      }
      break;
   case 128:
      {
         struct sockaddr_in6 *p_addr_v6 = (struct sockaddr_in6 *)p_addr;

         memset(&p_addr_v6->sin6_addr, 0, sizeof(p_addr_v6->sin6_addr));
      }
      break;
   default:

      vc_container_assert(0);
   }
}
