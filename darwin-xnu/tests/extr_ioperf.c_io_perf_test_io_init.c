
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int FILE_SIZE ;
 int F_NOCACHE ;
 int IOPOL_IMPORTANT ;
 int IOPOL_SCOPE_PROCESS ;
 int IOPOL_TYPE_DISK ;
 int IO_SIZE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SCHED_FIFO ;
 int S_IRUSR ;
 int THR_MANAGER_PRI ;
 int T_ASSERT_GE_INT (int,int ,char*) ;
 int T_ASSERT_NOTNULL (int ,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,...) ;
 int T_ASSERT_POSIX_ZERO (int ,char*) ;
 int T_PASS (char*) ;
 int T_QUIET ;
 int T_SKIP (char*) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int close (int) ;
 int data_buf ;
 int environ ;
 int fcntl (int,int ,int) ;
 int malloc (int) ;
 int open (char*,int,int ) ;
 int posix_spawn (int*,char* const,int *,int *,char* const*,int ) ;
 int pthread_self () ;
 int pthread_setschedparam (int ,int ,struct sched_param*) ;
 scalar_t__ read (int,int ,int) ;
 int setiopolicy_np (int ,int ,int ) ;
 int sync () ;
 int waitpid (int,int*,int ) ;
 scalar_t__ write (int,int ,int) ;

__attribute__((used)) static void
io_perf_test_io_init(void)
{
    int spawn_ret, pid;
    char *const mount_args[] = {"/usr/local/sbin/mount_nand.sh", ((void*)0)};
    spawn_ret = posix_spawn(&pid, mount_args[0], ((void*)0), ((void*)0), mount_args, environ);
    if (spawn_ret < 0) {
 T_SKIP("NAND mounting in LTE not possible on this device. Skipping test!");
    }
    waitpid(pid, &spawn_ret, 0);
    if (WIFEXITED(spawn_ret) && !WEXITSTATUS(spawn_ret)) {
        T_PASS("NAND mounted successfully");
    } else {
        T_SKIP("Unable to mount NAND. Skipping test!");
    }


    struct sched_param param = {.sched_priority = THR_MANAGER_PRI};
    T_ASSERT_POSIX_ZERO(pthread_setschedparam(pthread_self(), SCHED_FIFO, &param),
            "pthread_setschedparam");


    T_ASSERT_POSIX_ZERO(setiopolicy_np(IOPOL_TYPE_DISK, IOPOL_SCOPE_PROCESS,
            IOPOL_IMPORTANT), "setiopolicy");


    data_buf = malloc(IO_SIZE * 16);
    T_ASSERT_NOTNULL(data_buf, "Data buffer allocation");

    int rndfd = open("/dev/urandom", O_RDONLY, S_IRUSR);
    T_ASSERT_POSIX_SUCCESS(rndfd, "Open /dev/urandom");
    T_ASSERT_GE_INT((int)read(rndfd, data_buf, IO_SIZE * 16), 0, "read /dev/urandom");
    close(rndfd);


    int fd = open("/mnt2/test", O_CREAT | O_WRONLY, S_IRUSR);
    T_ASSERT_POSIX_SUCCESS(fd, 0, "Open /mnt2/test for writing!");

    T_ASSERT_POSIX_ZERO(fcntl(fd, F_NOCACHE, 1), "fcntl F_NOCACHE enable");
    for (int size = 0; size < FILE_SIZE;) {
        T_QUIET;
        T_ASSERT_GE_INT((int)write(fd, data_buf, IO_SIZE * 16), 0, "write test file");
        size += (IO_SIZE * 16);
    }
    close(fd);
    sync();

}
