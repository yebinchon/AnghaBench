
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
typedef TYPE_2__ q1_miptex_t ;
struct TYPE_18__ {int* dataofs; } ;
typedef TYPE_3__ q1_dmiptexlump_t ;
typedef int defaultvec ;
typedef int byte ;
struct TYPE_19__ {int numsides; struct TYPE_19__* next; TYPE_1__* sides; } ;
typedef TYPE_4__ bspbrush_t ;
struct TYPE_23__ {int nexttexinfo; int texture; scalar_t__ value; int flags; int ** vecs; } ;
struct TYPE_22__ {scalar_t__ planenum; int texinfo; } ;
struct TYPE_21__ {scalar_t__ planenum; } ;
struct TYPE_20__ {size_t miptex; int flags; int ** vecs; } ;


 int FreeBrush (TYPE_4__*) ;
 int Log_Write (char*,int) ;
 float Q1_FaceOnWinding (TYPE_7__*,int ) ;
 TYPE_4__* Q1_SplitBrushWithFace (TYPE_4__*,TYPE_7__*) ;
 int SFL_TEXTURED ;
 int TEXINFO_NODE ;
 double VectorLength (int *) ;
 int lessbrushes ;
 int map_numtexinfo ;
 TYPE_8__* map_texinfo ;
 int memcpy (int *,int*,int) ;
 TYPE_7__* q1_dfaces ;
 TYPE_6__* q1_dnodes ;
 scalar_t__ q1_dtexdata ;
 int q1_numfaces ;
 int q1_texdatasize ;
 TYPE_5__* q1_texinfo ;
 int qprintf (char*,...) ;
 int strcpy (int ,int ) ;

bspbrush_t *Q1_TextureBrushes(bspbrush_t *brushlist, int modelnum)
{
 float area, largestarea;
 int i, n, texinfonum, sn, numbrushes, ofs;
 int bestfacenum, sidenodenum;
 side_t *side;
 q1_dmiptexlump_t *miptexlump;
 q1_miptex_t *miptex;
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
    for (i = 0; i < q1_numfaces; i++)
    {


     if (q1_dfaces[i].planenum == q1_dnodes[sidenodenum].planenum)
     {

      area = Q1_FaceOnWinding(&q1_dfaces[i], side->winding);

      if (area > largestarea)
      {


       if (bestfacenum >= 0 &&
         (q1_dfaces[bestfacenum].texinfo != q1_dfaces[i].texinfo))
       {

        newbrushes = Q1_SplitBrushWithFace(brush, &q1_dfaces[i]);

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


    if (i < q1_numfaces) break;
   }
   else
   {


    for (i = 0; i < q1_numfaces; i++)
    {


     if (q1_dfaces[i].planenum == q1_dnodes[sidenodenum].planenum)
     {

      area = Q1_FaceOnWinding(&q1_dfaces[i], side->winding);

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

    texinfonum = q1_dfaces[bestfacenum].texinfo;
    for (n = 0; n < 4; n++)
    {
     map_texinfo[texinfonum].vecs[0][n] = q1_texinfo[texinfonum].vecs[0][n];
     map_texinfo[texinfonum].vecs[1][n] = q1_texinfo[texinfonum].vecs[1][n];
    }


    if (VectorLength(map_texinfo[texinfonum].vecs[0]) < 0.01)
     memcpy(map_texinfo[texinfonum].vecs[0], defaultvec, sizeof(defaultvec));
    if (VectorLength(map_texinfo[texinfonum].vecs[1]) < 0.01)
     memcpy(map_texinfo[texinfonum].vecs[1], defaultvec, sizeof(defaultvec));

    map_texinfo[texinfonum].flags = q1_texinfo[texinfonum].flags;
    map_texinfo[texinfonum].value = 0;

    miptexlump = (q1_dmiptexlump_t *) q1_dtexdata;
    ofs = miptexlump->dataofs[q1_texinfo[texinfonum].miptex];
    if ( ofs > q1_texdatasize ) {
     ofs = miptexlump->dataofs[0];
    }
    miptex = (q1_miptex_t *)((byte *)miptexlump + ofs);

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
