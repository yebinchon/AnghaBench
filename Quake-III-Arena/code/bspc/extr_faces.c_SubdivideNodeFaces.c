
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* faces; } ;
typedef TYPE_1__ node_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ face_t ;


 int SubdivideFace (TYPE_1__*,TYPE_2__*) ;

void SubdivideNodeFaces (node_t *node)
{
 face_t *f;

 for (f = node->faces ; f ; f=f->next)
 {
  SubdivideFace (node, f);
 }
}
