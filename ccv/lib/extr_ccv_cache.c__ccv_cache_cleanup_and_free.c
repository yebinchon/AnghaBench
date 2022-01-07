
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int off; int type; } ;
struct TYPE_6__ {int set; int bitmap; } ;
struct TYPE_8__ {TYPE_2__ terminal; TYPE_1__ branch; } ;
typedef TYPE_3__ ccv_cache_index_t ;
typedef int (* ccv_cache_index_free_f ) (void*) ;


 size_t CCV_GET_CACHE_TYPE (int ) ;
 int assert (int) ;
 int ccfree (TYPE_3__*) ;
 int compute_bits (int ) ;
 int stub1 (void*) ;

__attribute__((used)) static void _ccv_cache_cleanup_and_free(ccv_cache_index_t* branch, ccv_cache_index_free_f ffree[])
{
 int leaf = branch->terminal.off & 0x1;
 if (!leaf)
 {
  int i;
  uint64_t total = compute_bits(branch->branch.bitmap);
  ccv_cache_index_t* set = (ccv_cache_index_t*)(branch->branch.set - (branch->branch.set & 0x3));
  for (i = 0; i < total; i++)
   _ccv_cache_cleanup_and_free(set + i, ffree);
  ccfree(set);
 } else {
  assert(CCV_GET_CACHE_TYPE(branch->terminal.type) >= 0 && CCV_GET_CACHE_TYPE(branch->terminal.type) < 16);
  ffree[CCV_GET_CACHE_TYPE(branch->terminal.type)]((void*)(branch->terminal.off - (branch->terminal.off & 0x3)));
 }
}
