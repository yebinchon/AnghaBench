
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int os_reason_t ;


 int FALSE ;
 int SIGKILL ;
 int W_EXITCODE (int ,int ) ;
 int exit_with_reason (int ,int ,int*,int ,int ,int,int ) ;

__attribute__((used)) static int
jetsam_do_kill(proc_t p, int jetsam_flags, os_reason_t jetsam_reason) {
 int error = 0;
 error = exit_with_reason(p, W_EXITCODE(0, SIGKILL), (int *)((void*)0), FALSE, FALSE, jetsam_flags, jetsam_reason);
 return(error);
}
