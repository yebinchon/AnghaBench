
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;



__attribute__((used)) static void timespec_add_nano(struct timespec * out, struct timespec * in, long val)
{
    out->tv_nsec = val + in->tv_nsec;
    if (out->tv_nsec < (in->tv_nsec)) {
        out->tv_sec += 1;
    }
}
