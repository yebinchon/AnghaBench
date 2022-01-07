
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int current_logfile_datename ;
typedef int current_file_name ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ num_item; } ;
struct TYPE_6__ {int Event; TYPE_2__* RecordQueue; scalar_t__ Halt; } ;
typedef int THREAD ;
typedef TYPE_1__ LOG ;
typedef int IO ;
typedef int BUF ;


 int FileCloseEx (int *,int) ;
 int FreeBuf (int *) ;
 int * GetIO4Stdout () ;
 int LockQueue (TYPE_2__*) ;
 int LogThreadWriteGeneral (TYPE_1__*,int *,int **,int*,char*,char*) ;
 int LogThreadWriteStdout (TYPE_1__*,int *,int *) ;
 int MAX_SIZE ;
 int MsSetThreadPriorityIdle () ;
 int MsSetThreadPriorityRealtime () ;
 int * NewBuf () ;
 int NoticeThreadInit (int *) ;
 int Tick64 () ;
 int UnlockQueue (TYPE_2__*) ;
 int Wait (int ,int) ;
 int Zero (char*,int) ;
 scalar_t__ g_foreground ;

void LogThread(THREAD *thread, void *param)
{
 LOG *g;
 IO *io;
 BUF *b;
 bool flag = 0;
 char current_file_name[MAX_SIZE];
 char current_logfile_datename[MAX_SIZE];
 bool log_date_changed = 0;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 Zero(current_file_name, sizeof(current_file_name));
 Zero(current_logfile_datename, sizeof(current_logfile_datename));

 g = (LOG *)param;

 io = g_foreground ? GetIO4Stdout() : ((void*)0);
 b = NewBuf();
 NoticeThreadInit(thread);

 while (1)
 {
  UINT64 s = Tick64();

  while (1)
  {
   if (g_foreground)
   {
    if (! LogThreadWriteStdout(g, b, io))
    {
     break;
    }
   }
   else
   {
    if (! LogThreadWriteGeneral(g, b, &io, &log_date_changed, current_logfile_datename, current_file_name))
    {
     break;
    }
   }
  }

  if (g->Halt)
  {


   UINT num;

   if (flag == 0)
   {



    flag = 1;
   }

   LockQueue(g->RecordQueue);
   {
    num = g->RecordQueue->num_item;
   }
   UnlockQueue(g->RecordQueue);

   if (num == 0 || io == ((void*)0))
   {
    break;
   }
  }
  else
  {
   Wait(g->Event, 9821);
  }
 }

 if (io != ((void*)0) && !g_foreground)
 {
  FileCloseEx(io, 1);
 }

 FreeBuf(b);
}
