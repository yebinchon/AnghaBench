
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int context; int server; } ;
typedef TYPE_1__ gdb_stub ;
struct TYPE_7__ {int sock; int context; } ;
typedef TYPE_2__ gdb_client ;
typedef int YabSock ;


 int SH2SetBreakpointCallBack (int ,int ,TYPE_2__*) ;
 int YAB_THREAD_GDBSTUBCLIENT ;
 int YabSockAccept (int ) ;
 int YabThreadStart (int ,int ,TYPE_2__*) ;
 int gdb_client_lock ;
 int gdb_stub_client ;
 TYPE_2__* malloc (int) ;
 int perror (char*) ;

__attribute__((used)) static void gdb_stub_listener(void * data)
{
   gdb_stub * stub = data;
   YabSock sock;

   while(1)
   {
      gdb_client * client;

      sock = YabSockAccept(stub->server);
      if (sock == -1)
      {
         perror("accept");
         return;
      }

      client = malloc(sizeof(gdb_client));
      client->context = stub->context;
      client->sock = sock;

      SH2SetBreakpointCallBack(stub->context, gdb_client_lock, client);

      YabThreadStart(YAB_THREAD_GDBSTUBCLIENT, gdb_stub_client, client);
   }
}
