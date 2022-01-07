
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_1__ vertex_t ;
struct TYPE_10__ {int * sidenum; int v2; int v1; int tag; int special; int flags; } ;
typedef TYPE_2__ maplinedef_t ;
struct TYPE_11__ {size_t flags; size_t special; size_t tag; scalar_t__ dx; scalar_t__ dy; scalar_t__* bbox; size_t* sidenum; scalar_t__ backsector; scalar_t__ frontsector; int slopetype; TYPE_1__* v2; TYPE_1__* v1; } ;
typedef TYPE_3__ line_t ;
typedef int byte ;
struct TYPE_12__ {scalar_t__ sector; } ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;
 scalar_t__ FixedDiv (scalar_t__,scalar_t__) ;
 int PU_LEVEL ;
 int PU_STATIC ;
 size_t SHORT (int ) ;
 int ST_HORIZONTAL ;
 int ST_NEGATIVE ;
 int ST_POSITIVE ;
 int ST_VERTICAL ;
 int * W_CacheLumpNum (int,int ) ;
 int W_LumpLength (int) ;
 int Z_Free (int *) ;
 TYPE_3__* Z_Malloc (int,int ,int ) ;
 TYPE_3__* lines ;
 int memset (TYPE_3__*,int ,int) ;
 int numlines ;
 TYPE_5__* sides ;
 TYPE_1__* vertexes ;

void P_LoadLineDefs (int lump)
{
    byte* data;
    int i;
    maplinedef_t* mld;
    line_t* ld;
    vertex_t* v1;
    vertex_t* v2;

    numlines = W_LumpLength (lump) / sizeof(maplinedef_t);
    lines = Z_Malloc (numlines*sizeof(line_t),PU_LEVEL,0);
    memset (lines, 0, numlines*sizeof(line_t));
    data = W_CacheLumpNum (lump,PU_STATIC);

    mld = (maplinedef_t *)data;
    ld = lines;
    for (i=0 ; i<numlines ; i++, mld++, ld++)
    {
 ld->flags = SHORT(mld->flags);
 ld->special = SHORT(mld->special);
 ld->tag = SHORT(mld->tag);
 v1 = ld->v1 = &vertexes[SHORT(mld->v1)];
 v2 = ld->v2 = &vertexes[SHORT(mld->v2)];
 ld->dx = v2->x - v1->x;
 ld->dy = v2->y - v1->y;

 if (!ld->dx)
     ld->slopetype = ST_VERTICAL;
 else if (!ld->dy)
     ld->slopetype = ST_HORIZONTAL;
 else
 {
     if (FixedDiv (ld->dy , ld->dx) > 0)
  ld->slopetype = ST_POSITIVE;
     else
  ld->slopetype = ST_NEGATIVE;
 }

 if (v1->x < v2->x)
 {
     ld->bbox[BOXLEFT] = v1->x;
     ld->bbox[BOXRIGHT] = v2->x;
 }
 else
 {
     ld->bbox[BOXLEFT] = v2->x;
     ld->bbox[BOXRIGHT] = v1->x;
 }

 if (v1->y < v2->y)
 {
     ld->bbox[BOXBOTTOM] = v1->y;
     ld->bbox[BOXTOP] = v2->y;
 }
 else
 {
     ld->bbox[BOXBOTTOM] = v2->y;
     ld->bbox[BOXTOP] = v1->y;
 }

 ld->sidenum[0] = SHORT(mld->sidenum[0]);
 ld->sidenum[1] = SHORT(mld->sidenum[1]);

 if (ld->sidenum[0] != -1)
     ld->frontsector = sides[ld->sidenum[0]].sector;
 else
     ld->frontsector = 0;

 if (ld->sidenum[1] != -1)
     ld->backsector = sides[ld->sidenum[1]].sector;
 else
     ld->backsector = 0;
    }

    Z_Free (data);
}
