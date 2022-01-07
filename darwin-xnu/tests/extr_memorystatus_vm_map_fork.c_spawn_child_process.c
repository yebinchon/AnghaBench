
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_spawnattr_t ;
typedef int pid_t ;


 int POSIX_SPAWN_START_SUSPENDED ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_QUIET ;
 int environ ;
 int posix_spawn (int *,char* const,int *,int *,char* const*,int ) ;
 int posix_spawnattr_init (int *) ;
 int posix_spawnattr_setflags (int *,int ) ;
 int posix_spawnattr_setjetsam_ext (int *,short,int,int,int) ;

__attribute__((used)) static pid_t
spawn_child_process(
 char * const executable,
 char * const memlimit,
 short flags,
 int priority,
 int active_limit_mb,
 int inactive_limit_mb)
{
 posix_spawnattr_t spawn_attrs;
 int err;
 pid_t child_pid;
 char * const argv_child[] = { executable, "-n", "child_process", "--", memlimit, ((void*)0) };

 err = posix_spawnattr_init(&spawn_attrs);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(err, "  posix_spawnattr_init() failed");

 err = posix_spawnattr_setflags(&spawn_attrs, POSIX_SPAWN_START_SUSPENDED);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(err, "  posix_spawnattr_setflags() failed");

 err = posix_spawnattr_setjetsam_ext(&spawn_attrs, flags, priority, active_limit_mb, inactive_limit_mb);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(err, "  posix_spawnattr_setjetsam_ext() failed");

 err = posix_spawn(&child_pid, executable, ((void*)0), &spawn_attrs, argv_child, environ);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(err, "  posix_spawn() failed");

 return child_pid;
}
