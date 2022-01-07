
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void
print_usage()
{
 printf("Usage: jitter [-w] [-s <random seed>] [-n <min sleep, ns>] [-m <max sleep, ns>] <realtime | timeshare | fixed> <num iterations> <traceworthy jitter, ns>\n");
}
