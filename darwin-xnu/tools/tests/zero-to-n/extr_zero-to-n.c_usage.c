
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int errx (int ,char*,int ) ;
 int getprogname () ;

__attribute__((used)) static void __attribute__((noreturn))
usage()
{
 errx(EX_USAGE, "Usage: %s <threads> <chain | hop | broadcast-single-sem | broadcast-per-thread> "
      "<realtime | timeshare | fixed> <iterations>\n\t\t"
      "[--trace <traceworthy latency in ns>] "
      "[--verbose] [--spin-one] [--spin-all] [--spin-time <nanos>] [--affinity]\n\t\t"
      "[--no-sleep] [--drop-priority] [--churn-pri <pri>] [--churn-count <n>]",
      getprogname());
}
