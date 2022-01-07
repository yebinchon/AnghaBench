
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
typedef int pid_t ;


 int wait4 (int,int*,int,struct rusage*) ;

pid_t wait3( int* status, int options, struct rusage* rusage ) {
    return wait4( -1, status, options, rusage );
}
