
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef TYPE_1__ gdb_client ;


 int SH2BreakNow (int ) ;

void gdb_client_break(gdb_client * client)
{
   SH2BreakNow(client->context);
}
