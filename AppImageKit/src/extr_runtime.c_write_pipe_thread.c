
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;


 int SIGTERM ;
 int fuse_pid ;
 int * keepalive_pipe ;
 int kill (int ,int ) ;
 int memset (char*,char,int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void *
write_pipe_thread (void *arg)
{
    char c[32];
    int res;

    memset (c, 'x', sizeof (c));
    while (1) {

        res = write (keepalive_pipe[1], c, sizeof (c));
        if (res == -1) {
            kill (fuse_pid, SIGTERM);
            break;
        }
    }
    return ((void*)0);
}
