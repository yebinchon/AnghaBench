
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; scalar_t__ pid; int (* f ) () ;int dir; } ;
typedef TYPE_1__ Test ;


 int TmpDirPat ;
 int close (int) ;
 int ctfailnow () ;
 int curdir ;
 int die (int,int ,char*) ;
 int dup2 (int,int) ;
 int errno ;
 int exit (int ) ;
 scalar_t__ fail ;
 int fflush (int *) ;
 scalar_t__ fork () ;
 int * mkdtemp (int ) ;
 int setpgid (scalar_t__,scalar_t__) ;
 int strcpy (int ,int ) ;
 int stub1 () ;
 int tmpfd () ;

__attribute__((used)) static void
start(Test *t)
{
    t->fd = tmpfd();
    strcpy(t->dir, TmpDirPat);
    if (mkdtemp(t->dir) == ((void*)0)) {
 die(1, errno, "mkdtemp");
    }
    fflush(((void*)0));
    t->pid = fork();
    if (t->pid < 0) {
        die(1, errno, "fork");
    } else if (!t->pid) {
        setpgid(0, 0);
        if (dup2(t->fd, 1) == -1) {
            die(3, errno, "dup2");
        }
        if (close(t->fd) == -1) {
            die(3, errno, "fclose");
        }
        if (dup2(1, 2) == -1) {
            die(3, errno, "dup2");
        }
        curdir = t->dir;
        t->f();
        if (fail) {
            ctfailnow();
        }
        exit(0);
    }
    setpgid(t->pid, t->pid);
}
