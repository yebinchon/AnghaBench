
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;



__attribute__((used)) static inline int
signal_is_restricted(proc_t p, int signum)
{
 (void)p;
 (void)signum;
 return 0;
}
