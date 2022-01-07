
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; } ;
typedef TYPE_1__ gdb_client ;


 int SH2BreakNow (int ) ;
 int gdb_client_unlock (TYPE_1__*) ;

void gdb_client_step(gdb_client * client) {
   SH2BreakNow(client->context);
   gdb_client_unlock(client);
}
