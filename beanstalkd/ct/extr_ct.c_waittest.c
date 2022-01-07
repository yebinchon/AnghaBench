
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; int status; scalar_t__ f; } ;
typedef TYPE_1__ Test ;


 int SIGKILL ;
 int die (int,int ,char*) ;
 int errno ;
 scalar_t__ failed (int) ;
 int fflush (int ) ;
 int killpg (int,int ) ;
 int putchar (char) ;
 int stdout ;
 int wait3 (int*,int ,int ) ;

__attribute__((used)) static void
waittest(Test *ts)
{
    Test *t;
    int pid, stat;

    pid = wait3(&stat, 0, 0);
    if (pid == -1) {
        die(3, errno, "wait");
    }
    killpg(pid, SIGKILL);

    for (t=ts; t->f; t++) {
        if (t->pid == pid) {
            t->status = stat;
            if (!t->status) {
                putchar('.');
            } else if (failed(t->status)) {
                putchar('F');
            } else {
                putchar('E');
            }
            fflush(stdout);
        }
    }
}
