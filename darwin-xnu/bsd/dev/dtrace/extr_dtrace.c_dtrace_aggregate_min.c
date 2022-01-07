
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static void
dtrace_aggregate_min(uint64_t *oval, uint64_t nval, uint64_t arg)
{
#pragma unused(arg)
 if ((int64_t)nval < (int64_t)*oval)
  *oval = nval;
}
