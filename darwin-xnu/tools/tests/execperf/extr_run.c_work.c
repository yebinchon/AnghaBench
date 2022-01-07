
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ EINTR ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int WTERMSIG (int) ;
 int environ ;
 int err (int,char*,int ) ;
 int errc (int,int,char*,int ) ;
 scalar_t__ errno ;
 int errx (int,char*,int) ;
 int * newargv ;
 int posix_spawn (int *,int ,int *,int *,int *,int ) ;
 int waitpid (int ,int*,int ) ;

void *work(void *arg)
{
    int count = (int)(intptr_t)arg;
    int i;
    int ret;
    pid_t pid;

    for (i=0; i < count; i++) {
        ret = posix_spawn(&pid, newargv[0], ((void*)0), ((void*)0), newargv, environ);
        if (ret != 0) {
            errc(1, ret, "posix_spawn(%s)", newargv[0]);
        }

        while (-1 == waitpid(pid, &ret, 0)) {
            if (errno != EINTR) {
                err(1, "waitpid(%d)", pid);
            }
        }

        if (WIFSIGNALED(ret)) {
            errx(1, "process exited with signal %d", WTERMSIG(ret));
        } else if (WIFSTOPPED(ret)) {
            errx(1, "process stopped with signal %d", WSTOPSIG(ret));
        } else if (WIFEXITED(ret)) {
            if (WEXITSTATUS(ret) != 42) {
                errx(1, "process exited with unexpected exit code %d", WEXITSTATUS(ret));
            }
        } else {
            errx(1, "unknown exit condition %x", ret);
        }
    }

    return ((void*)0);
}
