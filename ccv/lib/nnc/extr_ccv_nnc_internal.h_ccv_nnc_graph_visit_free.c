
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_graph_visit_t ;


 int ccfree (int *) ;

__attribute__((used)) static inline void ccv_nnc_graph_visit_free(ccv_nnc_graph_visit_t* graph_visit)
{
 ccfree(graph_visit);
}
