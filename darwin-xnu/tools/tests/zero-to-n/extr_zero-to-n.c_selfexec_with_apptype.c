
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int posix_spawnattr_t ;


 int EX_OSERR ;
 int PATH_MAX ;
 int POSIX_SPAWN_PROC_TYPE_APP_DEFAULT ;
 int POSIX_SPAWN_SETEXEC ;
 int _NSGetExecutablePath (char*,int*) ;
 int err (int ,char*) ;
 int errc (int ,int,char*) ;
 int posix_spawn (int *,char*,int *,int *,char**,char**) ;
 int posix_spawnattr_init (int *) ;
 int posix_spawnattr_setflags (int *,int ) ;
 int posix_spawnattr_setprocesstype_np (int *,int ) ;

__attribute__((used)) static void
selfexec_with_apptype(int argc, char *argv[])
{
 int ret;
 posix_spawnattr_t attr;
 extern char **environ;
 char *new_argv[argc + 1 + 1 ];
 int i;
 char prog[PATH_MAX];
 uint32_t prog_size = PATH_MAX;

 ret = _NSGetExecutablePath(prog, &prog_size);
 if (ret) err(EX_OSERR, "_NSGetExecutablePath");

 for (i=0; i < argc; i++) {
  new_argv[i] = argv[i];
 }

 new_argv[i] = "--switched_apptype";
 new_argv[i+1] = ((void*)0);

 ret = posix_spawnattr_init(&attr);
 if (ret) errc(EX_OSERR, ret, "posix_spawnattr_init");

 ret = posix_spawnattr_setflags(&attr, POSIX_SPAWN_SETEXEC);
 if (ret) errc(EX_OSERR, ret, "posix_spawnattr_setflags");

 ret = posix_spawnattr_setprocesstype_np(&attr, POSIX_SPAWN_PROC_TYPE_APP_DEFAULT);
 if (ret) errc(EX_OSERR, ret, "posix_spawnattr_setprocesstype_np");

 ret = posix_spawn(((void*)0), prog, ((void*)0), &attr, new_argv, environ);
 if (ret) errc(EX_OSERR, ret, "posix_spawn");
}
