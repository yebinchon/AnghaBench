
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* children; } ;
typedef TYPE_1__ node_t ;
typedef int divline_t ;
typedef int boolean ;
struct TYPE_5__ {int y; int x; } ;


 int NF_SUBSECTOR ;
 int P_CrossSubsector (int) ;
 int P_DivlineSide (int ,int ,int *) ;
 TYPE_1__* nodes ;
 TYPE_2__ strace ;
 int t2x ;
 int t2y ;

boolean P_CrossBSPNode (int bspnum)
{
    node_t* bsp;
    int side;

    if (bspnum & NF_SUBSECTOR)
    {
 if (bspnum == -1)
     return P_CrossSubsector (0);
 else
     return P_CrossSubsector (bspnum&(~NF_SUBSECTOR));
    }

    bsp = &nodes[bspnum];


    side = P_DivlineSide (strace.x, strace.y, (divline_t *)bsp);
    if (side == 2)
 side = 0;


    if (!P_CrossBSPNode (bsp->children[side]) )
 return 0;


    if (side == P_DivlineSide (t2x, t2y,(divline_t *)bsp))
    {

 return 1;
    }


    return P_CrossBSPNode (bsp->children[side^1]);
}
