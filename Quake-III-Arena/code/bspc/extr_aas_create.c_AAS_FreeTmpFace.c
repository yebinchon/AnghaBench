
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ winding; TYPE_2__* l_next; TYPE_1__* l_prev; } ;
typedef TYPE_3__ tmp_face_t ;
struct TYPE_10__ {int numfaces; TYPE_2__* faces; } ;
struct TYPE_8__ {TYPE_1__* l_prev; } ;
struct TYPE_7__ {TYPE_2__* l_next; } ;


 int FreeMemory (TYPE_3__*) ;
 int FreeWinding (scalar_t__) ;
 TYPE_4__ tmpaasworld ;

void AAS_FreeTmpFace(tmp_face_t *tmpface)
{
 if (tmpface->l_next) tmpface->l_next->l_prev = tmpface->l_prev;
 if (tmpface->l_prev) tmpface->l_prev->l_next = tmpface->l_next;
 else tmpaasworld.faces = tmpface->l_next;

 if (tmpface->winding) FreeWinding(tmpface->winding);

 FreeMemory(tmpface);
 tmpaasworld.numfaces--;
}
