
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int texnum; int frameUsed; } ;
typedef TYPE_2__ image_t ;
struct TYPE_12__ {int* currenttextures; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int frameCount; TYPE_1__* dlightImage; } ;
struct TYPE_8__ {int texnum; } ;
typedef int GLuint ;


 int GL_SelectTexture (int) ;
 int GL_TEXTURE_2D ;
 TYPE_5__ glState ;
 int qglBindTexture (int ,int) ;
 TYPE_4__* r_nobind ;
 TYPE_3__ tr ;

void GL_BindMultitexture( image_t *image0, GLuint env0, image_t *image1, GLuint env1 ) {
 int texnum0, texnum1;

 texnum0 = image0->texnum;
 texnum1 = image1->texnum;

 if ( r_nobind->integer && tr.dlightImage ) {
  texnum0 = texnum1 = tr.dlightImage->texnum;
 }

 if ( glState.currenttextures[1] != texnum1 ) {
  GL_SelectTexture( 1 );
  image1->frameUsed = tr.frameCount;
  glState.currenttextures[1] = texnum1;
  qglBindTexture( GL_TEXTURE_2D, texnum1 );
 }
 if ( glState.currenttextures[0] != texnum0 ) {
  GL_SelectTexture( 0 );
  image0->frameUsed = tr.frameCount;
  glState.currenttextures[0] = texnum0;
  qglBindTexture( GL_TEXTURE_2D, texnum0 );
 }
}
