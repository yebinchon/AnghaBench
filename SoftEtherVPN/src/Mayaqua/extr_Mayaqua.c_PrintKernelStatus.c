
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLine (int *,int ) ;
 scalar_t__ IsHamMode () ;
 int KS_CURRENT_LOCKED_COUNT ;
 int KS_CURRENT_LOCK_COUNT ;
 int KS_CURRENT_MEM_COUNT ;
 int KS_CURRENT_REFED_COUNT ;
 int KS_CURRENT_REF_COUNT ;
 int KS_DELETELOCK_COUNT ;
 int KS_FREEREF_COUNT ;
 int KS_FREETHREAD_COUNT ;
 int KS_FREE_COUNT ;
 scalar_t__ KS_GET (int ) ;
 int KS_GET64 (int ) ;
 int KS_GETMAX (int ) ;
 int KS_GETTICK_COUNT ;
 int KS_GETTIME_COUNT ;
 int KS_MALLOC_COUNT ;
 int KS_MEMPOOL_CURRENT_NUM ;
 int KS_MEMPOOL_MALLOC_COUNT ;
 int KS_MEMPOOL_REALLOC_COUNT ;
 int KS_NEWLOCK_COUNT ;
 int KS_NEWREF_COUNT ;
 int KS_NEWTHREAD_COUNT ;
 int KS_REALLOC_COUNT ;
 int KS_TOTAL_MEM_COUNT ;
 int KS_TOTAL_MEM_SIZE ;
 int KS_WAIT_COUNT ;
 int Print (char*,...) ;
 int g_memcheck ;

void PrintKernelStatus()
{
 bool leaked = 0;

 Print("\n");
 Print(
  "     --------- Mayaqua Kernel Status ---------\n"
  "        Malloc Count ............... %u\n"
  "        ReAlloc Count .............. %u\n"
  "        Free Count ................. %u\n"
  "        Total Memory Size .......... %I64u bytes\n"
  "      * Current Memory Blocks ...... %u Blocks (Peek: %u)\n"
  "        Total Memory Blocks ........ %u Blocks\n"
  "      * Current MemPool Blocks ..... %u Blocks (Peek: %u)\n"
  "        Total MemPool Mallocs ...... %u Mallocs\n"
  "        Total MemPool ReAllocs ..... %u ReAllocs\n"
  "        NewLock Count .............. %u\n"
  "        DeleteLock Count ........... %u\n"
  "      * Current Lock Objects ....... %u Objects\n"
  "      * Current Locked Objects ..... %u Objects\n"
  "        NewRef Count ............... %u\n"
  "        FreeRef Count .............. %u\n"
  "      * Current Ref Objects ........ %u Objects\n"
  "      * Current Ref Count .......... %u Refs\n"
  "        GetTime Count .............. %u\n"
  "        GetTick Count .............. %u\n"
  "        NewThread Count ............ %u\n"
  "        FreeThread Count ........... %u\n"
  "      * Current Threads ............ %u Threads\n"
  "        Wait For Event Count ....... %u\n\n",
  KS_GET(KS_MALLOC_COUNT),
  KS_GET(KS_REALLOC_COUNT),
  KS_GET(KS_FREE_COUNT),
  KS_GET64(KS_TOTAL_MEM_SIZE),
  KS_GET(KS_CURRENT_MEM_COUNT),
  KS_GETMAX(KS_CURRENT_MEM_COUNT),
  KS_GET(KS_TOTAL_MEM_COUNT),
  KS_GET(KS_MEMPOOL_CURRENT_NUM),
  KS_GETMAX(KS_MEMPOOL_CURRENT_NUM),
  KS_GET(KS_MEMPOOL_MALLOC_COUNT),
  KS_GET(KS_MEMPOOL_REALLOC_COUNT),
  KS_GET(KS_NEWLOCK_COUNT),
  KS_GET(KS_DELETELOCK_COUNT),
  KS_GET(KS_CURRENT_LOCK_COUNT),
  KS_GET(KS_CURRENT_LOCKED_COUNT),
  KS_GET(KS_NEWREF_COUNT),
  KS_GET(KS_FREEREF_COUNT),
  KS_GET(KS_CURRENT_REF_COUNT),
  KS_GET(KS_CURRENT_REFED_COUNT),
  KS_GET(KS_GETTIME_COUNT),
  KS_GET(KS_GETTICK_COUNT),
  KS_GET(KS_NEWTHREAD_COUNT),
  KS_GET(KS_FREETHREAD_COUNT),
  KS_GET(KS_NEWTHREAD_COUNT) - KS_GET(KS_FREETHREAD_COUNT),
  KS_GET(KS_WAIT_COUNT)
  );

 if (KS_GET(KS_CURRENT_MEM_COUNT) != 0 || KS_GET(KS_CURRENT_LOCK_COUNT) != 0 ||
  KS_GET(KS_MEMPOOL_CURRENT_NUM) != 0 ||
  KS_GET(KS_CURRENT_LOCKED_COUNT) != 0 || KS_GET(KS_CURRENT_REF_COUNT) != 0)
 {
  leaked = 1;
 }

 if (leaked)
 {
  Print("      !!! MEMORY LEAKS DETECTED !!!\n\n");
  if (g_memcheck == 0)
  {
   if (IsHamMode())
   {
    Print("    Enable /memcheck startup option to see the leaking memory heap.\n");
    Print("    Press Enter key to exit the process.\n");
   }
   GetLine(((void*)0), 0);
  }
 }
 else
 {
  Print("        @@@ NO MEMORY LEAKS @@@\n\n");
 }
}
