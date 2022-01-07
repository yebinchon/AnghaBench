
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* faces; } ;
typedef TYPE_1__ node_t ;
struct TYPE_7__ {int numpoints; void** vertexnums; struct TYPE_7__* next; struct TYPE_7__** split; } ;
typedef TYPE_2__ face_t ;


 int MAXEDGES ;
 void* NewFaceFromFace (TYPE_2__*) ;
 int c_faceoverflows ;
 int numsuperverts ;
 void** superverts ;

void FaceFromSuperverts (node_t *node, face_t *f, int base)
{
 face_t *newf;
 int remaining;
 int i;

 remaining = numsuperverts;
 while (remaining > MAXEDGES)
 {
  c_faceoverflows++;

  newf = f->split[0] = NewFaceFromFace (f);
  newf = f->split[0];
  newf->next = node->faces;
  node->faces = newf;

  newf->numpoints = MAXEDGES;
  for (i=0 ; i<MAXEDGES ; i++)
   newf->vertexnums[i] = superverts[(i+base)%numsuperverts];

  f->split[1] = NewFaceFromFace (f);
  f = f->split[1];
  f->next = node->faces;
  node->faces = f;

  remaining -= (MAXEDGES-2);
  base = (base+MAXEDGES-1)%numsuperverts;
 }


 f->numpoints = remaining;
 for (i=0 ; i<remaining ; i++)
  f->vertexnums[i] = superverts[(i+base)%numsuperverts];
}
