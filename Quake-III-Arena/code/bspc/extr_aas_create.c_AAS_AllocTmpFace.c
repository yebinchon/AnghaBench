
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l_prev; struct TYPE_4__* l_next; scalar_t__ num; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_5__ {int numfaces; TYPE_1__* faces; int facenum; } ;


 scalar_t__ GetClearedMemory (int) ;
 TYPE_2__ tmpaasworld ;

tmp_face_t *AAS_AllocTmpFace(void)
{
 tmp_face_t *tmpface;

 tmpface = (tmp_face_t *) GetClearedMemory(sizeof(tmp_face_t));
 tmpface->num = tmpaasworld.facenum++;
 tmpface->l_prev = ((void*)0);
 tmpface->l_next = tmpaasworld.faces;
 if (tmpaasworld.faces) tmpaasworld.faces->l_prev = tmpface;
 tmpaasworld.faces = tmpface;
 tmpaasworld.numfaces++;
 return tmpface;
}
