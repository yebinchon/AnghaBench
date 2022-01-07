
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigjmp_buf ;
typedef int * MemoryContext ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_INITSIZE ;
 int ALLOCSET_DEFAULT_MAXSIZE ;
 int ALLOCSET_DEFAULT_MINSIZE ;
 int * AllocSetContextCreateExtended (int ,char*,int ,int ,int ) ;
 int AtEOXact_Files (int) ;
 int AtEOXact_HashTables (int) ;
 int BackgroundWorkerUnblockSignals () ;
 int EmitErrorReport () ;
 int ExitOnAnyError ;
 int FlushErrorState () ;
 int HOLD_INTERRUPTS () ;
 int LWLockReleaseAll () ;
 int ManageWorkerTasksHash (int ) ;
 int MemoryContextResetAndDeleteChildren (int *) ;
 int MemoryContextSwitchTo (int *) ;
 int PGC_SIGHUP ;
 int * PG_exception_stack ;
 int PostmasterIsAlive () ;
 int ProcessConfigFile (int ) ;
 int RESUME_INTERRUPTS () ;
 int SIGHUP ;
 int SIGTERM ;
 int TaskTrackerTaskHash ;
 int TopMemoryContext ;
 int TrackerCleanupConnections (int ) ;
 int TrackerCleanupJobDirectories () ;
 int TrackerCleanupJobSchemas () ;
 int TrackerDelayLoop () ;
 int TrackerRegisterShutDown (int ) ;
 int TrackerShutdownHandler ;
 int TrackerSigHupHandler ;
 int * error_context_stack ;
 int exit (int) ;
 int got_SIGHUP ;
 scalar_t__ got_SIGTERM ;
 int pg_usleep (long) ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 scalar_t__ sigsetjmp (int ,int) ;

void
TaskTrackerMain(Datum main_arg)
{
 MemoryContext TaskTrackerContext = ((void*)0);
 sigjmp_buf local_sigjmp_buf;
 static bool processStartUp = 1;


 pqsignal(SIGHUP, TrackerSigHupHandler);
 pqsignal(SIGTERM, TrackerShutdownHandler);


 BackgroundWorkerUnblockSignals();






 TaskTrackerContext = AllocSetContextCreateExtended(TopMemoryContext, "Task Tracker",
                ALLOCSET_DEFAULT_MINSIZE,
                ALLOCSET_DEFAULT_INITSIZE,
                ALLOCSET_DEFAULT_MAXSIZE);
 MemoryContextSwitchTo(TaskTrackerContext);
 if (sigsetjmp(local_sigjmp_buf, 1) != 0)
 {

  error_context_stack = ((void*)0);


  HOLD_INTERRUPTS();


  EmitErrorReport();






  LWLockReleaseAll();
  AtEOXact_Files(0);
  AtEOXact_HashTables(0);





  MemoryContextSwitchTo(TaskTrackerContext);
  FlushErrorState();


  MemoryContextResetAndDeleteChildren(TaskTrackerContext);


  RESUME_INTERRUPTS();






  pg_usleep(1000000L);
 }


 PG_exception_stack = &local_sigjmp_buf;





 if (processStartUp)
 {
  processStartUp = 0;


  TrackerCleanupJobDirectories();


  TrackerCleanupJobSchemas();
 }


 for (;;)
 {
  if (!PostmasterIsAlive())
  {
   exit(1);
  }


  if (got_SIGHUP)
  {
   got_SIGHUP = 0;


   ProcessConfigFile(PGC_SIGHUP);
  }
  if (got_SIGTERM)
  {




   ExitOnAnyError = 1;


   TrackerCleanupConnections(TaskTrackerTaskHash);


   TrackerRegisterShutDown(TaskTrackerTaskHash);


   proc_exit(0);
  }


  ManageWorkerTasksHash(TaskTrackerTaskHash);


  TrackerDelayLoop();
 }
}
