
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer_size; void* buffer; } ;
typedef TYPE_1__ ccv_nnc_graph_t ;


 void* ccmalloc (int) ;
 void* ccrealloc (void*,int) ;

void* ccv_nnc_graph_buffer(ccv_nnc_graph_t* const graph, int size)
{
 if (graph->buffer_size >= size)
  return graph->buffer;
 graph->buffer_size = size;
 graph->buffer = (graph->buffer) ? ccrealloc(graph->buffer, size) : ccmalloc(size);
 return graph->buffer;
}
