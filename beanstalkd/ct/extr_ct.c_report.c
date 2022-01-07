
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int fd; int status; int dir; scalar_t__ f; } ;
typedef TYPE_1__ Test ;


 int SEEK_SET ;
 int WEXITSTATUS (int ) ;
 scalar_t__ WIFEXITED (int ) ;
 scalar_t__ WIFSIGNALED (int ) ;
 int WTERMSIG (int ) ;
 int copyfd (int ,int ) ;
 scalar_t__ failed (int ) ;
 int lseek (int ,int ,int ) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int rmtree (int ) ;
 int stdout ;

__attribute__((used)) static int
report(Test *t)
{
    int nfail = 0, nerr = 0;

    putchar('\n');
    for (; t->f; t++) {
        rmtree(t->dir);
        if (!t->status) {
            continue;
        }

        printf("\n%s: ", t->name);
        if (failed(t->status)) {
            nfail++;
            printf("failure");
        } else {
            nerr++;
            printf("error");
            if (WIFEXITED(t->status)) {
                printf(" (exit status %d)", WEXITSTATUS(t->status));
            }
            if (WIFSIGNALED(t->status)) {
                printf(" (signal %d)", WTERMSIG(t->status));
            }
        }

        putchar('\n');
        lseek(t->fd, 0, SEEK_SET);
        copyfd(stdout, t->fd);
    }

    if (nfail || nerr) {
        printf("\n%d failures; %d errors.\n", nfail, nerr);
    } else {
        printf("\nPASS\n");
    }
    return nfail || nerr;
}
