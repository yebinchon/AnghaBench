
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ denom; scalar_t__ numer; } ;


 TYPE_1__ g_mti ;
 int printf (char*,...) ;
 int putchar (char) ;

void
print_stats_us(const char *label, double avg, double max, double min, double stddev)
{
 printf("Max %s: %.1lfus\n", label, max / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
 printf("Min %s: %.1lfus\n", label, min / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
 printf("Avg magnitude of %s: %.1lfus\n", label, avg / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
 printf("Stddev: %.1lfus\n", stddev / 1000.0 * (((double)g_mti.numer) / ((double)g_mti.denom)));
 putchar('\n');
}
