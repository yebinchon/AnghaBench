
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Event; int RecordQueue; } ;
struct TYPE_6__ {void* Data; int * ParseProc; int Tick; } ;
typedef int RECORD_PARSE_PROC ;
typedef TYPE_1__ RECORD ;
typedef TYPE_2__ LOG ;


 int InsertQueue (int ,TYPE_1__*) ;
 int LockQueue (int ) ;
 int Set (int ) ;
 int Tick64 () ;
 int UnlockQueue (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

void InsertRecord(LOG *g, void *data, RECORD_PARSE_PROC *proc)
{
 RECORD *rec;

 if (g == ((void*)0) || data == ((void*)0) || proc == ((void*)0))
 {
  return;
 }

 rec = ZeroMalloc(sizeof(RECORD));
 rec->Tick = Tick64();
 rec->ParseProc = proc;
 rec->Data = data;

 LockQueue(g->RecordQueue);
 {
  InsertQueue(g->RecordQueue, rec);
 }
 UnlockQueue(g->RecordQueue);

 Set(g->Event);
}
