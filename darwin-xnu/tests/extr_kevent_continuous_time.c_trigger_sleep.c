
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ASSERT_EQ (int,int,int *) ;
 int T_ASSERT_POSIX_ZERO (int,int *) ;
 int T_LOG (char*,char*) ;
 int environ ;
 int posix_spawn (int*,char* const,int *,int *,char* const*,int ) ;
 int run_sleep_tests ;
 int snprintf (char*,int,char*,int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int trigger_sleep(int for_secs) {
 if(!run_sleep_tests) return 0;


 char buf[10];
 snprintf(buf, 10, "%d", for_secs);

 T_LOG("Sleepeing for %s seconds...", buf);

 int spawn_ret, pid;
 char *const pmset1_args[] = {"/usr/bin/pmset", "relative", "wake", buf, ((void*)0)};
 T_ASSERT_POSIX_ZERO((spawn_ret = posix_spawn(&pid, pmset1_args[0], ((void*)0), ((void*)0), pmset1_args, environ)), ((void*)0));

 T_ASSERT_EQ(waitpid(pid, &spawn_ret, 0), pid, ((void*)0));
 T_ASSERT_EQ(spawn_ret, 0, ((void*)0));

 char *const pmset2_args[] = {"/usr/bin/pmset", "sleepnow", ((void*)0)};
 T_ASSERT_POSIX_ZERO((spawn_ret = posix_spawn(&pid, pmset2_args[0], ((void*)0), ((void*)0), pmset2_args, environ)), ((void*)0));

 T_ASSERT_EQ(waitpid(pid, &spawn_ret, 0), pid, ((void*)0));
 T_ASSERT_EQ(spawn_ret, 0, ((void*)0));

 return 0;
}
