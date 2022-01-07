
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* settings; struct TYPE_6__* l_next; scalar_t__ winding; } ;
typedef TYPE_1__ tmp_nodebuf_t ;
typedef TYPE_1__ tmp_face_t ;
typedef TYPE_1__ tmp_area_t ;
struct TYPE_7__ {TYPE_1__* nodebuffer; TYPE_1__* areas; TYPE_1__* faces; } ;


 int FreeMemory (TYPE_1__*) ;
 int FreeWinding (scalar_t__) ;
 TYPE_4__ tmpaasworld ;

void AAS_FreeTmpAAS(void)
{
 tmp_face_t *f, *nextf;
 tmp_area_t *a, *nexta;
 tmp_nodebuf_t *nb, *nextnb;


 for (f = tmpaasworld.faces; f; f = nextf)
 {
  nextf = f->l_next;
  if (f->winding) FreeWinding(f->winding);
  FreeMemory(f);
 }

 for (a = tmpaasworld.areas; a; a = nexta)
 {
  nexta = a->l_next;
  if (a->settings) FreeMemory(a->settings);
  FreeMemory(a);
 }

 for (nb = tmpaasworld.nodebuffer; nb; nb = nextnb)
 {
  nextnb = nb->next;
  FreeMemory(nb);
 }
}
