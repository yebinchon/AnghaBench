
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {size_t firstline; int sector; } ;
typedef TYPE_5__ subsector_t ;
struct TYPE_19__ {TYPE_1__* sidedef; } ;
typedef TYPE_6__ seg_t ;
struct TYPE_17__ {int x; int y; } ;
struct TYPE_20__ {int linecount; int* blockbox; TYPE_4__ soundorg; TYPE_8__** lines; } ;
typedef TYPE_7__ sector_t ;
struct TYPE_21__ {TYPE_3__* v2; TYPE_2__* v1; TYPE_7__* backsector; TYPE_7__* frontsector; } ;
typedef TYPE_8__ line_t ;
typedef int fixed_t ;
struct TYPE_16__ {int y; int x; } ;
struct TYPE_15__ {int y; int x; } ;
struct TYPE_14__ {int sector; } ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;
 int I_Error (char*) ;
 int MAPBLOCKSHIFT ;
 int MAXRADIUS ;
 int M_AddToBox (int*,int ,int ) ;
 int M_ClearBox (int*) ;
 int PU_LEVEL ;
 TYPE_8__** Z_Malloc (int,int ,int ) ;
 int bmapheight ;
 int bmaporgx ;
 int bmaporgy ;
 int bmapwidth ;
 TYPE_8__* lines ;
 int numlines ;
 int numsectors ;
 int numsubsectors ;
 TYPE_7__* sectors ;
 TYPE_6__* segs ;
 TYPE_5__* subsectors ;

void P_GroupLines (void)
{
    line_t** linebuffer;
    int i;
    int j;
    int total;
    line_t* li;
    sector_t* sector;
    subsector_t* ss;
    seg_t* seg;
    fixed_t bbox[4];
    int block;


    ss = subsectors;
    for (i=0 ; i<numsubsectors ; i++, ss++)
    {
 seg = &segs[ss->firstline];
 ss->sector = seg->sidedef->sector;
    }


    li = lines;
    total = 0;
    for (i=0 ; i<numlines ; i++, li++)
    {
 total++;
 li->frontsector->linecount++;

 if (li->backsector && li->backsector != li->frontsector)
 {
     li->backsector->linecount++;
     total++;
 }
    }


    linebuffer = Z_Malloc (total*4, PU_LEVEL, 0);
    sector = sectors;
    for (i=0 ; i<numsectors ; i++, sector++)
    {
 M_ClearBox (bbox);
 sector->lines = linebuffer;
 li = lines;
 for (j=0 ; j<numlines ; j++, li++)
 {
     if (li->frontsector == sector || li->backsector == sector)
     {
  *linebuffer++ = li;
  M_AddToBox (bbox, li->v1->x, li->v1->y);
  M_AddToBox (bbox, li->v2->x, li->v2->y);
     }
 }
 if (linebuffer - sector->lines != sector->linecount)
     I_Error ("P_GroupLines: miscounted");


 sector->soundorg.x = (bbox[BOXRIGHT]+bbox[BOXLEFT])/2;
 sector->soundorg.y = (bbox[BOXTOP]+bbox[BOXBOTTOM])/2;


 block = (bbox[BOXTOP]-bmaporgy+MAXRADIUS)>>MAPBLOCKSHIFT;
 block = block >= bmapheight ? bmapheight-1 : block;
 sector->blockbox[BOXTOP]=block;

 block = (bbox[BOXBOTTOM]-bmaporgy-MAXRADIUS)>>MAPBLOCKSHIFT;
 block = block < 0 ? 0 : block;
 sector->blockbox[BOXBOTTOM]=block;

 block = (bbox[BOXRIGHT]-bmaporgx+MAXRADIUS)>>MAPBLOCKSHIFT;
 block = block >= bmapwidth ? bmapwidth-1 : block;
 sector->blockbox[BOXRIGHT]=block;

 block = (bbox[BOXLEFT]-bmaporgx-MAXRADIUS)>>MAPBLOCKSHIFT;
 block = block < 0 ? 0 : block;
 sector->blockbox[BOXLEFT]=block;
    }

}
