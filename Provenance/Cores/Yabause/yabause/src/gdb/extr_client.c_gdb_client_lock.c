
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int gdb_client ;


 int YAB_THREAD_GDBSTUBCLIENT ;
 int YabThreadRemoteSleep (int ) ;
 int gdb_client_send (int *,char*,int) ;

void gdb_client_lock(void *context, u32 addr, void * userdata) {
   gdb_client * client = userdata;

   gdb_client_send(client, "S05", 3);

   YabThreadRemoteSleep(YAB_THREAD_GDBSTUBCLIENT);
}
