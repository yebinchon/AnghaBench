
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Thread; void* FlushEvent; void* Event; int RecordQueue; int SwitchType; void* Prefix; void* DirName; int lock; } ;
typedef TYPE_1__ LOG ;


 void* CopyStr (char*) ;
 int LogThread ;
 void* NewEvent () ;
 int NewLock () ;
 int NewQueue () ;
 int NewThread (int ,TYPE_1__*) ;
 int WaitThreadInit (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

LOG *NewLog(char *dir, char *prefix, UINT switch_type)
{
 LOG *g;

 g = ZeroMalloc(sizeof(LOG));
 g->lock = NewLock();
 g->DirName = CopyStr(dir == ((void*)0) ? "" : dir);
 g->Prefix = CopyStr(prefix == ((void*)0) ? "log" : prefix);
 g->SwitchType = switch_type;
 g->RecordQueue = NewQueue();
 g->Event = NewEvent();
 g->FlushEvent = NewEvent();

 g->Thread = NewThread(LogThread, g);

 WaitThreadInit(g->Thread);

 return g;
}
