
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ int32_t ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_LQUANTIZE_BASE (scalar_t__) ;
 scalar_t__ DTRACE_LQUANTIZE_LEVELS (scalar_t__) ;
 scalar_t__ DTRACE_LQUANTIZE_STEP (scalar_t__) ;

__attribute__((used)) static void
dtrace_aggregate_lquantize(uint64_t *lquanta, uint64_t nval, uint64_t incr)
{
 uint64_t arg = *lquanta++;
 int32_t base = DTRACE_LQUANTIZE_BASE(arg);
 uint16_t step = DTRACE_LQUANTIZE_STEP(arg);
 uint16_t levels = DTRACE_LQUANTIZE_LEVELS(arg);
 int32_t val = (int32_t)nval, level;

 ASSERT(step != 0);
 ASSERT(levels != 0);

 if (val < base) {



  lquanta[0] += incr;
  return;
 }

 level = (val - base) / step;

 if (level < levels) {
  lquanta[level + 1] += incr;
  return;
 }




 lquanta[levels + 1] += incr;
}
