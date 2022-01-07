
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int subsector_t ;
struct TYPE_4__ {int* children; } ;
typedef TYPE_1__ node_t ;
typedef int fixed_t ;


 int NF_SUBSECTOR ;
 int R_PointOnSide (int ,int ,TYPE_1__*) ;
 TYPE_1__* nodes ;
 int numnodes ;
 int * subsectors ;

subsector_t*
R_PointInSubsector
( fixed_t x,
  fixed_t y )
{
    node_t* node;
    int side;
    int nodenum;


    if (!numnodes)
 return subsectors;

    nodenum = numnodes-1;

    while (! (nodenum & NF_SUBSECTOR) )
    {
 node = &nodes[nodenum];
 side = R_PointOnSide (x, y, node);
 nodenum = node->children[side];
    }

    return &subsectors[nodenum & ~NF_SUBSECTOR];
}
