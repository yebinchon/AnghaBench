
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int16_t ;



__attribute__((used)) static int
dtrace_aggregate_llquantize_bucket(int16_t factor, int16_t low, int16_t high,
                                   int16_t nsteps, int64_t value)
{
 int64_t this = 1, last, next;
 int base = 1, order;

 for (order = 0; order < low; ++order)
  this *= factor;





 if (value < this)
  return 0;
 else
  last = this;

 for (this *= factor; order <= high; ++order) {
  int nbuckets = this > nsteps ? nsteps : this;
  next = this * factor;
  if (next < this) {
   value = this - 1;
  }







  if (value < this) {
   return (base + (value - last) / (this / nbuckets));
  }

  base += nbuckets - (nbuckets / factor);
  last = this;
  this = next;
 }





 return base;
}
