
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 int OSCompareAndSwap (scalar_t__,scalar_t__,scalar_t__ volatile*) ;
 int TRUE ;

__attribute__((used)) static inline boolean_t
sample_counter(volatile uint32_t * count_p, uint32_t factor)
{
 uint32_t old_count, new_count;
 boolean_t rolled_over;

 do {
  new_count = old_count = *count_p;

  if (++new_count >= factor) {
   rolled_over = TRUE;
   new_count = 0;
  } else {
   rolled_over = FALSE;
  }

 } while (!OSCompareAndSwap(old_count, new_count, count_p));

 return rolled_over;
}
