
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Buffer; } ;
typedef TYPE_1__ RPC_READ_LOG_FILE ;


 int FreeBuf (int *) ;

void FreeRpcReadLogFile(RPC_READ_LOG_FILE *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->Buffer != ((void*)0))
 {
  FreeBuf(t->Buffer);
 }
}
