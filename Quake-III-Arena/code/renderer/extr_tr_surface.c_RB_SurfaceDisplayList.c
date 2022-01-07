
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int listNum; } ;
typedef TYPE_1__ srfDisplayList_t ;


 int qglCallList (int ) ;

void RB_SurfaceDisplayList( srfDisplayList_t *surf ) {


 qglCallList( surf->listNum );
}
