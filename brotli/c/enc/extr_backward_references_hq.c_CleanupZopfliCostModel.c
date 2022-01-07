
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cost_dist_; int literal_costs_; } ;
typedef TYPE_1__ ZopfliCostModel ;
typedef int MemoryManager ;


 int BROTLI_FREE (int *,int ) ;

__attribute__((used)) static void CleanupZopfliCostModel(MemoryManager* m, ZopfliCostModel* self) {
  BROTLI_FREE(m, self->literal_costs_);
  BROTLI_FREE(m, self->cost_dist_);
}
