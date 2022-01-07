
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client ;


 int YAB_THREAD_GDBSTUBCLIENT ;
 int YabThreadWake (int ) ;

void gdb_client_unlock(gdb_client * client) {
   YabThreadWake(YAB_THREAD_GDBSTUBCLIENT);
}
