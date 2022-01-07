
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int* dlightBits; } ;
typedef TYPE_3__ srfTriangles_t ;
struct TYPE_11__ {scalar_t__* origin; scalar_t__ radius; } ;
typedef TYPE_4__ dlight_t ;
struct TYPE_13__ {scalar_t__** meshBounds; int* dlightBits; } ;
struct TYPE_9__ {int c_dlightSurfacesCulled; } ;
struct TYPE_8__ {int num_dlights; TYPE_4__* dlights; } ;
struct TYPE_12__ {size_t smpFrame; TYPE_2__ pc; TYPE_1__ refdef; } ;


 TYPE_6__* grid ;
 TYPE_5__ tr ;

__attribute__((used)) static int R_DlightTrisurf( srfTriangles_t *surf, int dlightBits ) {

 surf->dlightBits[ tr.smpFrame ] = dlightBits;
 return dlightBits;
}
