
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int angle; int offset; scalar_t__ backsector; scalar_t__ frontsector; TYPE_4__* sidedef; TYPE_3__* linedef; int * v2; int * v1; } ;
typedef TYPE_1__ seg_t ;
struct TYPE_10__ {int side; int linedef; int offset; int angle; int v2; int v1; } ;
typedef TYPE_2__ mapseg_t ;
struct TYPE_11__ {size_t* sidenum; int flags; } ;
typedef TYPE_3__ line_t ;
typedef int byte ;
struct TYPE_12__ {scalar_t__ sector; } ;


 int ML_TWOSIDED ;
 int PU_LEVEL ;
 int PU_STATIC ;
 int SHORT (int ) ;
 int * W_CacheLumpNum (int,int ) ;
 int W_LumpLength (int) ;
 int Z_Free (int *) ;
 TYPE_1__* Z_Malloc (int,int ,int ) ;
 TYPE_3__* lines ;
 int memset (TYPE_1__*,int ,int) ;
 int numsegs ;
 TYPE_1__* segs ;
 TYPE_4__* sides ;
 int * vertexes ;

void P_LoadSegs (int lump)
{
    byte* data;
    int i;
    mapseg_t* ml;
    seg_t* li;
    line_t* ldef;
    int linedef;
    int side;

    numsegs = W_LumpLength (lump) / sizeof(mapseg_t);
    segs = Z_Malloc (numsegs*sizeof(seg_t),PU_LEVEL,0);
    memset (segs, 0, numsegs*sizeof(seg_t));
    data = W_CacheLumpNum (lump,PU_STATIC);

    ml = (mapseg_t *)data;
    li = segs;
    for (i=0 ; i<numsegs ; i++, li++, ml++)
    {
 li->v1 = &vertexes[SHORT(ml->v1)];
 li->v2 = &vertexes[SHORT(ml->v2)];

 li->angle = (SHORT(ml->angle))<<16;
 li->offset = (SHORT(ml->offset))<<16;
 linedef = SHORT(ml->linedef);
 ldef = &lines[linedef];
 li->linedef = ldef;
 side = SHORT(ml->side);
 li->sidedef = &sides[ldef->sidenum[side]];
 li->frontsector = sides[ldef->sidenum[side]].sector;
 if (ldef-> flags & ML_TWOSIDED)
     li->backsector = sides[ldef->sidenum[side^1]].sector;
 else
     li->backsector = 0;
    }

    Z_Free (data);
}
