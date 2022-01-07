
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int wait4 (int ,int*,int,int *) ;

pid_t waitpid( pid_t pid, int* status, int options ) {
    return wait4( pid, status, options, ((void*)0) );
}
