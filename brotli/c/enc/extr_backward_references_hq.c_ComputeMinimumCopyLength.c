
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float cost; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ ZopfliNode ;



__attribute__((used)) static size_t ComputeMinimumCopyLength(const float start_cost,
                                       const ZopfliNode* nodes,
                                       const size_t num_bytes,
                                       const size_t pos) {

  float min_cost = start_cost;
  size_t len = 2;
  size_t next_len_bucket = 4;
  size_t next_len_offset = 10;
  while (pos + len <= num_bytes && nodes[pos + len].u.cost <= min_cost) {



    ++len;
    if (len == next_len_offset) {


      min_cost += 1.0f;
      next_len_offset += next_len_bucket;
      next_len_bucket *= 2;
    }
  }
  return len;
}
