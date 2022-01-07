
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct rusage {int ru_maxrss; } ;
typedef scalar_t__ pid_t ;
typedef int memlimit_str ;
typedef int max_task_pmem ;
typedef enum child_exits { ____Placeholder_child_exits } child_exits ;


 int JETSAM_PRIORITY_FOREGROUND ;
 int LIMIT_DELTA_MB ;
 unsigned long long MEMORYSTATUS_VM_MAP_FORK_ALLOWED ;
 unsigned long long MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED ;
 int NORMAL_EXIT ;
 int NUM_CHILD_EXIT ;
 scalar_t__ SIGKILL ;
 int TEST_ALLOWED ;
 int T_ASSERT_EQ (int,int ,char*,char*) ;
 int T_ASSERT_NE_ULLONG (unsigned long long,unsigned long long,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,int ) ;
 int T_EXPECT_EQ (unsigned long long,unsigned long long,char*,unsigned long long,unsigned long long) ;
 int T_LOG (char*,...) ;
 int T_QUIET ;
 int T_SKIP (char*,...) ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WTERMSIG (int) ;
 int _NSGetExecutablePath (int ,int *) ;
 char** child_exit_why ;
 unsigned long long get_memorystatus_vm_map_fork_pidwatch () ;
 int is_development_kernel () ;
 int memset (char*,int ,int) ;
 int set_memorystatus_vm_map_fork_pidwatch (scalar_t__) ;
 scalar_t__ spawn_child_process (int ,char*,short,int ,int,int) ;
 int sprintf (char*,char*,int) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int test_child_process (scalar_t__,int*,struct rusage*) ;
 int testpath ;
 int testpath_size ;
 int wait_for_free_mem (int) ;

__attribute__((used)) static void
memorystatus_vm_map_fork_parent(int test_variant)
{
 int max_task_pmem = 0;
 size_t size = 0;
 int active_limit_mb = 0;
 int inactive_limit_mb = 0;
 short flags = 0;
 char memlimit_str[16];
 pid_t child_pid;
 int child_status;
 uint64_t kernel_pidwatch_val;
 uint64_t expected_pidwatch_val;
 int ret;
 struct rusage ru;
 enum child_exits exit_val;





 if (!is_development_kernel()) {
  T_SKIP("Can't test on release kernel");
 }




 size = sizeof(max_task_pmem);
 (void)sysctlbyname("kern.max_task_pmem", &max_task_pmem, &size, ((void*)0), 0);
 if (max_task_pmem <= 0)
  max_task_pmem = 0;

 if (test_variant == TEST_ALLOWED) {




  if (max_task_pmem / 4 - LIMIT_DELTA_MB <= 0) {
   active_limit_mb = LIMIT_DELTA_MB;
  } else {
   active_limit_mb = max_task_pmem / 4 - LIMIT_DELTA_MB;
  }
  expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_ALLOWED;

 } else {




  active_limit_mb = (max_task_pmem / 4) + LIMIT_DELTA_MB;
  if (max_task_pmem == 0) {
   expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_ALLOWED;
  } else {
   expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED;
  }

 }
 inactive_limit_mb = active_limit_mb;
 T_LOG("using limit of %d Meg", active_limit_mb);
 wait_for_free_mem(active_limit_mb);





 expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_ALLOWED;





 memset (memlimit_str, 0, sizeof(memlimit_str));
 (void)sprintf(memlimit_str, "%d", active_limit_mb);

 ret = _NSGetExecutablePath(testpath, &testpath_size);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(ret, "_NSGetExecutablePath(%s, ...)", testpath);




 child_pid = spawn_child_process(testpath, memlimit_str, flags,
     JETSAM_PRIORITY_FOREGROUND, active_limit_mb, inactive_limit_mb);

 expected_pidwatch_val |= (uint64_t)child_pid;




 T_LOG("  spawned child_pid[%d] with memlimit %s (%d)MB\n",
     child_pid, memlimit_str, active_limit_mb);




 (void)set_memorystatus_vm_map_fork_pidwatch((pid_t)0);
 (void)set_memorystatus_vm_map_fork_pidwatch(child_pid);




 test_child_process(child_pid, &child_status, &ru);
 T_LOG("Child exited with max_rss of %ld", ru.ru_maxrss);





 kernel_pidwatch_val = get_memorystatus_vm_map_fork_pidwatch();
 (void)set_memorystatus_vm_map_fork_pidwatch((pid_t)0);




 if (!WIFEXITED(child_status)) {
  if (WIFSIGNALED(child_status)) {

   if (WTERMSIG(child_status) == SIGKILL)
    T_LOG("Child appears to have been a jetsam victim");
   T_SKIP("Child terminated by signal %d test result invalid", WTERMSIG(child_status));
  }
  T_SKIP("child did not exit normally (status=%d) test result invalid", child_status);
 }




 exit_val = (enum child_exits)WEXITSTATUS(child_status);
 T_QUIET; T_ASSERT_EQ(exit_val, NORMAL_EXIT, "child exit due to: %s",
     (0 < exit_val && exit_val < NUM_CHILD_EXIT) ? child_exit_why[exit_val] : "unknown");




 if (kernel_pidwatch_val == -1ull) {
  T_SKIP("corpse generation was aborted by kernel");
 }




 T_QUIET; T_ASSERT_NE_ULLONG(kernel_pidwatch_val, (uint64_t)child_pid, "child didn't trigger corpse generation");

 T_EXPECT_EQ(kernel_pidwatch_val, expected_pidwatch_val, "kernel value 0x%llx - expected 0x%llx",
     kernel_pidwatch_val, expected_pidwatch_val);
}
