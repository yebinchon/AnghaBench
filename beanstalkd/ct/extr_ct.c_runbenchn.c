
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int bytes; int dur; int dir; int (* f ) (int) ;} ;
typedef TYPE_1__ Benchmark ;


 int SEEK_SET ;
 int SIGKILL ;
 int TmpDirPat ;
 int bbytes ;
 int bdur ;
 int close (int) ;
 int copyfd (int ,int) ;
 int ctstarttimer () ;
 int ctstoptimer () ;
 int curdir ;
 int die (int,int ,char*) ;
 int dup2 (int,int) ;
 int errno ;
 int exit (int ) ;
 int fflush (int *) ;
 int fork () ;
 int killpg (int,int ) ;
 int lseek (int,int ,int ) ;
 int * mkdtemp (int ) ;
 int perror (char*) ;
 int putchar (char) ;
 int read (int,int *,int) ;
 int rmtree (int ) ;
 int setpgid (int,int) ;
 int stdout ;
 int strcpy (int ,int ) ;
 int stub1 (int) ;
 int tmpfd () ;
 int waitpid (int,int*,int ) ;
 int write (int,int *,int) ;

__attribute__((used)) static void
runbenchn(Benchmark *b, int n)
{
    int outfd = tmpfd();
    int durfd = tmpfd();
    strcpy(b->dir, TmpDirPat);
    if (mkdtemp(b->dir) == ((void*)0)) {
 die(1, errno, "mkdtemp");
    }
    fflush(((void*)0));
    int pid = fork();
    if (pid < 0) {
        die(1, errno, "fork");
    } else if (!pid) {
        setpgid(0, 0);
        if (dup2(outfd, 1) == -1) {
            die(3, errno, "dup2");
        }
        if (close(outfd) == -1) {
            die(3, errno, "fclose");
        }
        if (dup2(1, 2) == -1) {
            die(3, errno, "dup2");
        }
        curdir = b->dir;
        ctstarttimer();
        b->f(n);
        ctstoptimer();
        if (write(durfd, &bdur, sizeof bdur) != sizeof bdur) {
            die(3, errno, "write");
        }
        if (write(durfd, &bbytes, sizeof bbytes) != sizeof bbytes) {
            die(3, errno, "write");
        }
        exit(0);
    }
    setpgid(pid, pid);

    pid = waitpid(pid, &b->status, 0);
    if (pid == -1) {
        die(3, errno, "wait");
    }
    killpg(pid, SIGKILL);
    rmtree(b->dir);
    if (b->status != 0) {
        putchar('\n');
        lseek(outfd, 0, SEEK_SET);
        copyfd(stdout, outfd);
        return;
    }

    lseek(durfd, 0, SEEK_SET);
    int r = read(durfd, &b->dur, sizeof b->dur);
    if (r != sizeof b->dur) {
        perror("read");
        b->status = 1;
    }
    r = read(durfd, &b->bytes, sizeof b->bytes);
    if (r != sizeof b->bytes) {
        perror("read");
        b->status = 1;
    }
}
