
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static void
dtrace_aggregate_avg(uint64_t *data, uint64_t nval, uint64_t arg)
{
#pragma unused(arg)
 data[0]++;
 data[1] += nval;
}
