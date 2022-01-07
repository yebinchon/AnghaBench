
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* delim; struct TYPE_4__* null_print_client; int fe_msgbuf; int rowcontext; } ;
typedef TYPE_1__* CopyOutState ;


 int Assert (int ) ;
 int FreeStringInfo (int ) ;
 int MemoryContextDelete (int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
ClearRowOutputState(CopyOutState rowOutputState)
{
 Assert(rowOutputState != ((void*)0));

 MemoryContextDelete(rowOutputState->rowcontext);

 FreeStringInfo(rowOutputState->fe_msgbuf);

 pfree(rowOutputState->null_print_client);
 pfree(rowOutputState->delim);

 pfree(rowOutputState);
}
