
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint64_t ;
struct timespec {long tv_sec; long tv_nsec; } ;
typedef int caddr_t ;


 long NSEC_PER_SEC ;
 int PCATCH ;
 int PRIBIO ;
 int msleep (int ,int *,int,char*,struct timespec*) ;
 int sys_override_lock ;
 int sys_override_wait ;

__attribute__((used)) static __attribute__((noinline)) void
PROCESS_OVERRIDING_SYSTEM_DEFAULTS(uint64_t timeout)
{
 struct timespec ts;
 ts.tv_sec = timeout / NSEC_PER_SEC;
 ts.tv_nsec = timeout - ((long)ts.tv_sec * NSEC_PER_SEC);
 msleep((caddr_t)&sys_override_wait, &sys_override_lock, PRIBIO | PCATCH, "system_override", &ts);
}
