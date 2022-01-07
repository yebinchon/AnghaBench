
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* client; scalar_t__ state; } ;
typedef TYPE_1__ gdb_packet ;
struct TYPE_5__ {int sock; } ;
typedef TYPE_2__ gdb_client ;


 size_t YabSockReceive (int ,char*,int,int ) ;
 int gdb_packet_read (TYPE_1__*,char*,size_t) ;

__attribute__((used)) static void gdb_stub_client(void * data)
{
   gdb_client * client = data;
   char buffer[1024];
   size_t got;
   gdb_packet packet;

   packet.state = 0;
   packet.client = client;


   while(-1 != (got = YabSockReceive(client->sock, buffer, 1024, 0)))
   {
      gdb_packet_read(&packet, buffer, got);
   }
}
