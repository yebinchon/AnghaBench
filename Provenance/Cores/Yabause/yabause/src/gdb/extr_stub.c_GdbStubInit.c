
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server; int * context; } ;
typedef TYPE_1__ gdb_stub ;
typedef int YabSock ;
typedef int SH2_struct ;


 int YAB_THREAD_GDBSTUBLISTENER ;
 int YabSockInit () ;
 int YabSockListenSocket (int,int *) ;
 int YabThreadStart (int ,int ,TYPE_1__*) ;
 int gdb_stub_listener ;
 TYPE_1__* malloc (int) ;

int GdbStubInit(SH2_struct * context, int port)
{
   int opt = 1;
   YabSock server;
   gdb_stub * stub;
   int ret;

   YabSockInit();

   if ((ret = YabSockListenSocket(port, &server)) != 0)
      return ret;

   stub = malloc(sizeof(gdb_stub));
   stub->context = context;
   stub->server = server;

   YabThreadStart(YAB_THREAD_GDBSTUBLISTENER, gdb_stub_listener, stub);

   return 0;
}
