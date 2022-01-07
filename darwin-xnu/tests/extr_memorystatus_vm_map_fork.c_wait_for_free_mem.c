
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memsize ;
typedef int memorystatus_level ;
typedef int int64_t ;


 int MAX (int ,int) ;
 int MEGABYTE ;
 int T_ASSERT_GT (int,int ,char*) ;
 int T_ASSERT_LE (int,int,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_LOG (char*,int,int,int) ;
 int T_QUIET ;
 int T_SKIP (char*,int,int) ;
 int sleep (int) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
wait_for_free_mem(int need_mb)
{
 int64_t memsize;
 int memorystatus_level;
 size_t size;
 int64_t avail;
 int err;
 int try;




 size = sizeof(memsize);
 err = sysctlbyname("hw.memsize", &memsize, &size, ((void*)0), 0);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(err, "sysctlbyname(hw.memsize...) failed");




 try = 1;
 for (;;) {





  size = sizeof(memorystatus_level);
  if (sysctlbyname("kern.memorystatus_level", &memorystatus_level, &size, ((void*)0), 0) != 0)
   return;
  T_QUIET; T_ASSERT_LE(memorystatus_level, 100, "memorystatus_level too high");
  T_QUIET; T_ASSERT_GT(memorystatus_level, 0, "memorystatus_level negative");




  avail = MAX(0, (memsize * (memorystatus_level - 15)) / 100);




  if ((int64_t)need_mb * MEGABYTE < avail)
   return;




  if (try-- == 0)
   break;
  T_LOG("Need %d MB, only %d MB available. sleeping 5 seconds for more to free. memorystatus_level %d",
      need_mb, (int)(avail / MEGABYTE), memorystatus_level);
  sleep(5);
 }
 T_SKIP("Needed %d MB, but only %d MB available. Skipping test to avoid jetsam issues.",
     need_mb, (int)(avail / MEGABYTE));
}
