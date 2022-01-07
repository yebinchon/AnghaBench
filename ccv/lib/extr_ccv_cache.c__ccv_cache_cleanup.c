
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int off; } ;
struct TYPE_7__ {int set; int bitmap; } ;
struct TYPE_8__ {TYPE_1__ terminal; TYPE_2__ branch; } ;
typedef TYPE_3__ ccv_cache_index_t ;


 int ccfree (TYPE_3__*) ;
 int compute_bits (int ) ;

__attribute__((used)) static void _ccv_cache_cleanup(ccv_cache_index_t* branch)
{
 int leaf = branch->terminal.off & 0x1;
 if (!leaf)
 {
  int i;
  uint64_t total = compute_bits(branch->branch.bitmap);
  ccv_cache_index_t* set = (ccv_cache_index_t*)(branch->branch.set - (branch->branch.set & 0x3));
  for (i = 0; i < total; i++)
  {
   if (!(set[i].terminal.off & 0x1))
    _ccv_cache_cleanup(set + i);
  }
  ccfree(set);
 }
}
