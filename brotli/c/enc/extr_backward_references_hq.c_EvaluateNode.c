
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float cost; int shortcut; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_2__ ZopfliNode ;
typedef int ZopfliCostModel ;
struct TYPE_10__ {size_t pos; float cost; float costdiff; int distance_cache; } ;
typedef int StartPosQueue ;
typedef TYPE_3__ PosData ;


 int ComputeDistanceCache (size_t const,int const*,TYPE_2__*,int ) ;
 int ComputeDistanceShortcut (size_t const,size_t const,size_t const,size_t const,TYPE_2__*) ;
 int StartPosQueuePush (int *,TYPE_3__*) ;
 float ZopfliCostModelGetLiteralCosts (int const*,int ,size_t const) ;

__attribute__((used)) static void EvaluateNode(
    const size_t block_start, const size_t pos, const size_t max_backward_limit,
    const size_t gap, const int* starting_dist_cache,
    const ZopfliCostModel* model, StartPosQueue* queue, ZopfliNode* nodes) {

  float node_cost = nodes[pos].u.cost;
  nodes[pos].u.shortcut = ComputeDistanceShortcut(
      block_start, pos, max_backward_limit, gap, nodes);
  if (node_cost <= ZopfliCostModelGetLiteralCosts(model, 0, pos)) {
    PosData posdata;
    posdata.pos = pos;
    posdata.cost = node_cost;
    posdata.costdiff = node_cost -
        ZopfliCostModelGetLiteralCosts(model, 0, pos);
    ComputeDistanceCache(
        pos, starting_dist_cache, nodes, posdata.distance_cache);
    StartPosQueuePush(queue, &posdata);
  }
}
