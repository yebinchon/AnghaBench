
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_4__ {int const rnum; } ;
typedef TYPE_1__ ccv_array_t ;


 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_1__ const* const,int const) ;

__attribute__((used)) static ccv_nnc_symbolic_graph_t* _ccv_nnc_symbolic_graph_get(const ccv_array_t* const repo, const ccv_nnc_symbolic_graph_t* const pos)
{
 const int idx = (uintptr_t)pos >> 1;
 assert(idx < repo->rnum);
 return *(ccv_nnc_symbolic_graph_t**)ccv_array_get(repo, idx);
}
