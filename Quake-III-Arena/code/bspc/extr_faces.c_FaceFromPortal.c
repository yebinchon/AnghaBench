
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int planenum; int texinfo; } ;
typedef TYPE_2__ side_t ;
struct TYPE_10__ {TYPE_1__** nodes; int winding; TYPE_2__* side; } ;
typedef TYPE_3__ portal_t ;
struct TYPE_11__ {int planenum; int contents; int w; TYPE_3__* portal; int texinfo; } ;
typedef TYPE_4__ face_t ;
struct TYPE_8__ {int contents; } ;


 TYPE_4__* AllocFace () ;
 int CONTENTS_WINDOW ;
 int CopyWinding (int ) ;
 int ReverseWinding (int ) ;
 int VisibleContents (int) ;

face_t *FaceFromPortal (portal_t *p, int pside)
{
 face_t *f;
 side_t *side;

 side = p->side;
 if (!side)
  return ((void*)0);

 f = AllocFace ();

 f->texinfo = side->texinfo;
 f->planenum = (side->planenum & ~1) | pside;
 f->portal = p;

 if ( (p->nodes[pside]->contents & CONTENTS_WINDOW)
  && VisibleContents(p->nodes[!pside]->contents^p->nodes[pside]->contents) == CONTENTS_WINDOW )
  return ((void*)0);

 if (pside)
 {
  f->w = ReverseWinding(p->winding);
  f->contents = p->nodes[1]->contents;
 }
 else
 {
  f->w = CopyWinding(p->winding);
  f->contents = p->nodes[0]->contents;
 }
 return f;
}
