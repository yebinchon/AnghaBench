
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int texnum; int frameUsed; } ;
typedef TYPE_3__ image_t ;
struct TYPE_15__ {int* currenttextures; size_t currenttmu; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_12__ {int frameCount; TYPE_2__* dlightImage; TYPE_1__* defaultImage; } ;
struct TYPE_10__ {int texnum; } ;
struct TYPE_9__ {int texnum; } ;


 int GL_TEXTURE_2D ;
 int PRINT_WARNING ;
 TYPE_7__ glState ;
 int qglBindTexture (int ,int) ;
 TYPE_6__* r_nobind ;
 TYPE_5__ ri ;
 int stub1 (int ,char*) ;
 TYPE_4__ tr ;

void GL_Bind( image_t *image ) {
 int texnum;

 if ( !image ) {
  ri.Printf( PRINT_WARNING, "GL_Bind: NULL image\n" );
  texnum = tr.defaultImage->texnum;
 } else {
  texnum = image->texnum;
 }

 if ( r_nobind->integer && tr.dlightImage ) {
  texnum = tr.dlightImage->texnum;
 }

 if ( glState.currenttextures[glState.currenttmu] != texnum ) {
  image->frameUsed = tr.frameCount;
  glState.currenttextures[glState.currenttmu] = texnum;
  qglBindTexture (GL_TEXTURE_2D, texnum);
 }
}
