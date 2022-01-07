
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_symbolic_graph_t ;



__attribute__((used)) static ccv_nnc_symbolic_graph_t* _ccv_nnc_symbolic_graph_pos(const int idx)
{
 if (idx < 0)
  return 0;
 return (ccv_nnc_symbolic_graph_t*)(((uintptr_t)idx << 1) + 1);
}
