
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* children; int * bbox; } ;
typedef TYPE_1__ node_t ;


 int NF_SUBSECTOR ;
 scalar_t__ R_CheckBBox (int ) ;
 int R_PointOnSide (int ,int ,TYPE_1__*) ;
 int R_Subsector (int) ;
 TYPE_1__* nodes ;
 int viewx ;
 int viewy ;

void R_RenderBSPNode (int bspnum)
{
    node_t* bsp;
    int side;


    if (bspnum & NF_SUBSECTOR)
    {
 if (bspnum == -1)
     R_Subsector (0);
 else
     R_Subsector (bspnum&(~NF_SUBSECTOR));
 return;
    }

    bsp = &nodes[bspnum];


    side = R_PointOnSide (viewx, viewy, bsp);


    R_RenderBSPNode (bsp->children[side]);


    if (R_CheckBBox (bsp->bbox[side^1]))
 R_RenderBSPNode (bsp->children[side^1]);
}
