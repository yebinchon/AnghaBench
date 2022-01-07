
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int BROTLI_BOOL ;


 scalar_t__ FastLog2 (size_t const) ;

__attribute__((used)) static void SetCost(const uint32_t* histogram, size_t histogram_size,
                    BROTLI_BOOL literal_histogram, float* cost) {
  size_t sum = 0;
  size_t missing_symbol_sum;
  float log2sum;
  float missing_symbol_cost;
  size_t i;
  for (i = 0; i < histogram_size; i++) {
    sum += histogram[i];
  }
  log2sum = (float)FastLog2(sum);
  missing_symbol_sum = sum;
  if (!literal_histogram) {
    for (i = 0; i < histogram_size; i++) {
      if (histogram[i] == 0) missing_symbol_sum++;
    }
  }
  missing_symbol_cost = (float)FastLog2(missing_symbol_sum) + 2;
  for (i = 0; i < histogram_size; i++) {
    if (histogram[i] == 0) {
      cost[i] = missing_symbol_cost;
      continue;
    }


    cost[i] = log2sum - (float)FastLog2(histogram[i]);


    if (cost[i] < 1) cost[i] = 1;
  }
}
