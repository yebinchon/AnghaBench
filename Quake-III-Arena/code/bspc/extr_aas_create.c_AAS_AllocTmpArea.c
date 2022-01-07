
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l_prev; struct TYPE_4__* l_next; scalar_t__ areanum; } ;
typedef TYPE_1__ tmp_area_t ;
struct TYPE_5__ {int numareas; TYPE_1__* areas; int areanum; } ;


 scalar_t__ GetClearedMemory (int) ;
 TYPE_2__ tmpaasworld ;

tmp_area_t *AAS_AllocTmpArea(void)
{
 tmp_area_t *tmparea;

 tmparea = (tmp_area_t *) GetClearedMemory(sizeof(tmp_area_t));
 tmparea->areanum = tmpaasworld.areanum++;
 tmparea->l_prev = ((void*)0);
 tmparea->l_next = tmpaasworld.areas;
 if (tmpaasworld.areas) tmpaasworld.areas->l_prev = tmparea;
 tmpaasworld.areas = tmparea;
 tmpaasworld.numareas++;
 return tmparea;
}
