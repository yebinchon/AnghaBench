
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static void
dtrace_aggregate_sum(uint64_t *oval, uint64_t nval, uint64_t arg)
{
#pragma unused(arg)
 *oval += nval;
}
