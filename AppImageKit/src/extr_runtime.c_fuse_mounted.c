
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int fuse_pid ;
 int getpid () ;
 int keepalive_pipe ;
 int pthread_create (int *,int *,int ,int ) ;
 int write_pipe_thread ;

void
fuse_mounted (void)
{
    pthread_t thread;
    fuse_pid = getpid();
    pthread_create(&thread, ((void*)0), write_pipe_thread, keepalive_pipe);
}
