
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrace {scalar_t__ allocs; } ;


 int MLEAK_NUM_TRACES ;
 struct mtrace** mleak_top_trace ;
 int mleak_trace_buckets ;
 struct mtrace* mleak_traces ;

__attribute__((used)) static void
mleak_sort_traces()
{
 int i, j, k;
 struct mtrace *swap;

 for(i = 0; i < MLEAK_NUM_TRACES; i++)
  mleak_top_trace[i] = ((void*)0);

 for(i = 0, j = 0; j < MLEAK_NUM_TRACES && i < mleak_trace_buckets; i++)
 {
  if (mleak_traces[i].allocs <= 0)
   continue;

  mleak_top_trace[j] = &mleak_traces[i];
  for (k = j; k > 0; k--) {
   if (mleak_top_trace[k]->allocs <=
       mleak_top_trace[k-1]->allocs)
    break;

   swap = mleak_top_trace[k-1];
   mleak_top_trace[k-1] = mleak_top_trace[k];
   mleak_top_trace[k] = swap;
  }
  j++;
 }

 j--;
 for(; i < mleak_trace_buckets; i++) {
  if (mleak_traces[i].allocs <= mleak_top_trace[j]->allocs)
   continue;

  mleak_top_trace[j] = &mleak_traces[i];

  for (k = j; k > 0; k--) {
   if (mleak_top_trace[k]->allocs <=
       mleak_top_trace[k-1]->allocs)
    break;

   swap = mleak_top_trace[k-1];
   mleak_top_trace[k-1] = mleak_top_trace[k];
   mleak_top_trace[k] = swap;
  }
 }
}
