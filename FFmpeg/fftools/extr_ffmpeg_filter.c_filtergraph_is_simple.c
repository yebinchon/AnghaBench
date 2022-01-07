
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int graph_desc; } ;
typedef TYPE_1__ FilterGraph ;



int filtergraph_is_simple(FilterGraph *fg)
{
    return !fg->graph_desc;
}
