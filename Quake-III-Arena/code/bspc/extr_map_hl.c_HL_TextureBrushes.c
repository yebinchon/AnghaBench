
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vec_t ;
struct TYPE_16__ {int flags; int surf; int texinfo; int winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_17__ {int name; } ;
typedef TYPE_2__ hl_miptex_t ;
struct TYPE_18__ {int* dataofs; } ;
typedef TYPE_3__ hl_dmiptexlump_t ;
typedef int defaultvec ;
typedef int byte ;
struct TYPE_19__ {int numsides; struct TYPE_19__* next; TYPE_1__* sides; } ;
typedef TYPE_4__ bspbrush_t ;
struct TYPE_23__ {scalar_t__ planenum; int texinfo; } ;
struct TYPE_22__ {scalar_t__ planenum; } ;
struct TYPE_21__ {size_t miptex; int flags; int ** vecs; } ;
struct TYPE_20__ {int nexttexinfo; int texture; scalar_t__ value; int flags; int ** vecs; } ;


 int FreeBrush (TYPE_4__*) ;
 float HL_FaceOnWinding (TYPE_8__*,int ) ;
 TYPE_4__* HL_SplitBrushWithFace (TYPE_4__*,TYPE_8__*) ;
 int Log_Write (char*,int) ;
 int SFL_TEXTURED ;
 int TEXINFO_NODE ;
 double VectorLength (int *) ;
 TYPE_8__* hl_dfaces ;
 TYPE_7__* hl_dnodes ;
 scalar_t__ hl_dtexdata ;
 int hl_numfaces ;
 int hl_texdatasize ;
 TYPE_6__* hl_texinfo ;
 int lessbrushes ;
 int map_numtexinfo ;
 TYPE_5__* map_texinfo ;
 int memcpy (int *,int*,int) ;
 int qprintf (char*,...) ;
 int strcpy (int ,int ) ;

bspbrush_t *HL_TextureBrushes(bspbrush_t *brushlist, int modelnum)
{
 float area, largestarea;
 int i, n, texinfonum, sn, numbrushes, ofs;
 int bestfacenum, sidenodenum;
 side_t *side;
 hl_dmiptexlump_t *miptexlump;
 hl_miptex_t *miptex;
 bspbrush_t *brush, *nextbrush, *prevbrush, *newbrushes, *brushlistend;
 vec_t defaultvec[4] = {1, 0, 0, 0};

 if (!modelnum) qprintf("texturing brushes\n");
 if (!modelnum) qprintf("%5d brushes", numbrushes = 0);

 for (brushlistend = brushlist; brushlistend; brushlistend = brushlistend->next)
 {
  if (!brushlistend->next) break;
 }

 prevbrush = ((void*)0);

 for (brush = brushlist; brush; brush = nextbrush)
 {
  nextbrush = brush->next;

  for (sn = 0; sn < brush->numsides; sn++)
  {
   side = &brush->sides[sn];

   if (side->flags & SFL_TEXTURED) continue;

   sidenodenum = side->surf;

   bestfacenum = -1;

   largestarea = 1;


   if (!lessbrushes)
   {
    for (i = 0; i < hl_numfaces; i++)
    {


     if (hl_dfaces[i].planenum == hl_dnodes[sidenodenum].planenum)
     {

      area = HL_FaceOnWinding(&hl_dfaces[i], side->winding);

      if (area > largestarea)
      {


       if (bestfacenum >= 0 &&
         (hl_dfaces[bestfacenum].texinfo != hl_dfaces[i].texinfo))
       {

        newbrushes = HL_SplitBrushWithFace(brush, &hl_dfaces[i]);

        if (newbrushes)
        {

         if (prevbrush) prevbrush->next = brush->next;
         else brushlist = brush->next;
         if (brushlistend == brush)
         {
          brushlistend = prevbrush;
          nextbrush = newbrushes;
         }

         if (brushlistend) brushlistend->next = newbrushes;
         else brushlist = newbrushes;

         FreeBrush(brush);


         brush = prevbrush;

         for (brushlistend = brushlist; brushlistend; brushlistend = brushlistend->next)
         {
          if (!brushlistend->next) break;
         }
         break;
        }
        else
        {
         Log_Write("brush %d: no real texture split", numbrushes);
        }
       }
       else
       {

        bestfacenum = i;
       }
      }
     }
    }


    if (i < hl_numfaces) break;
   }
   else
   {


    for (i = 0; i < hl_numfaces; i++)
    {


     if (hl_dfaces[i].planenum == hl_dnodes[sidenodenum].planenum)
     {

      area = HL_FaceOnWinding(&hl_dfaces[i], side->winding);

      if (area > largestarea)
      {
       largestarea = area;
       bestfacenum = i;
      }
     }
    }
   }

   if (bestfacenum >= 0)
   {

    texinfonum = hl_dfaces[bestfacenum].texinfo;
    for (n = 0; n < 4; n++)
    {
     map_texinfo[texinfonum].vecs[0][n] = hl_texinfo[texinfonum].vecs[0][n];
     map_texinfo[texinfonum].vecs[1][n] = hl_texinfo[texinfonum].vecs[1][n];
    }


    if (VectorLength(map_texinfo[texinfonum].vecs[0]) < 0.01)
     memcpy(map_texinfo[texinfonum].vecs[0], defaultvec, sizeof(defaultvec));
    if (VectorLength(map_texinfo[texinfonum].vecs[1]) < 0.01)
     memcpy(map_texinfo[texinfonum].vecs[1], defaultvec, sizeof(defaultvec));

    map_texinfo[texinfonum].flags = hl_texinfo[texinfonum].flags;
    map_texinfo[texinfonum].value = 0;

    miptexlump = (hl_dmiptexlump_t *) hl_dtexdata;
    ofs = miptexlump->dataofs[hl_texinfo[texinfonum].miptex];
    if ( ofs > hl_texdatasize ) {
     ofs = miptexlump->dataofs[0];
    }
    miptex = (hl_miptex_t *)((byte *)miptexlump + ofs );

    strcpy(map_texinfo[texinfonum].texture, miptex->name);

    map_texinfo[texinfonum].nexttexinfo = -1;

    side->texinfo = texinfonum;

    if (texinfonum > map_numtexinfo) map_numtexinfo = texinfonum;

    side->flags |= SFL_TEXTURED;
   }
   else
   {

    side->texinfo = TEXINFO_NODE;

    side->flags |= SFL_TEXTURED;
   }
  }

  if (!modelnum && prevbrush != brush) qprintf("\r%5d", ++numbrushes);

  prevbrush = brush;
 }
 if (!modelnum) qprintf("\n");

 return brushlist;
}
