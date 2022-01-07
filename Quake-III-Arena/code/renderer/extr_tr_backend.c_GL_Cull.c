
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isMirror; } ;
struct TYPE_6__ {TYPE_1__ viewParms; } ;
struct TYPE_5__ {int faceCulling; } ;


 int CT_BACK_SIDED ;
 int CT_TWO_SIDED ;
 int GL_BACK ;
 int GL_CULL_FACE ;
 int GL_FRONT ;
 TYPE_3__ backEnd ;
 TYPE_2__ glState ;
 int qglCullFace (int ) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;

void GL_Cull( int cullType ) {
 if ( glState.faceCulling == cullType ) {
  return;
 }

 glState.faceCulling = cullType;

 if ( cullType == CT_TWO_SIDED )
 {
  qglDisable( GL_CULL_FACE );
 }
 else
 {
  qglEnable( GL_CULL_FACE );

  if ( cullType == CT_BACK_SIDED )
  {
   if ( backEnd.viewParms.isMirror )
   {
    qglCullFace( GL_FRONT );
   }
   else
   {
    qglCullFace( GL_BACK );
   }
  }
  else
  {
   if ( backEnd.viewParms.isMirror )
   {
    qglCullFace( GL_BACK );
   }
   else
   {
    qglCullFace( GL_FRONT );
   }
  }
 }
}
