
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int connect_addr ;


 int AF_INET ;
 int INADDR_ANY ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ broadcast_init (int) ;
 int htonl (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;
 int socketclose (int) ;
 scalar_t__ wiiu_log_lock ;
 int wiiu_log_socket ;

__attribute__((used)) static void wiiu_log_init(int port)
{
   wiiu_log_lock = 0;

   if(wiiu_log_socket >= 0)
      return;

   if(broadcast_init(port) < 0)
      return;

   wiiu_log_socket = socket(AF_INET, SOCK_DGRAM, 0);

   if(wiiu_log_socket < 0)
      return;

   struct sockaddr_in connect_addr;
   memset(&connect_addr, 0, sizeof(connect_addr));
   connect_addr.sin_family = AF_INET;
   connect_addr.sin_port = 0;
   connect_addr.sin_addr.s_addr = htonl(INADDR_ANY);

   if( bind(wiiu_log_socket, (struct sockaddr *)&connect_addr, sizeof(connect_addr)) < 0)
   {
      socketclose(wiiu_log_socket);
      wiiu_log_socket = -1;
      return;
   }
}
