
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long glStateBits; } ;
struct TYPE_3__ {int (* Error ) (int ,char*) ;} ;
typedef int GLenum ;


 int ERR_DROP ;
 unsigned long GLS_ATEST_BITS ;



 unsigned long GLS_DEPTHFUNC_EQUAL ;
 unsigned long GLS_DEPTHMASK_TRUE ;
 unsigned long GLS_DEPTHTEST_DISABLE ;
 unsigned long GLS_DSTBLEND_BITS ;
 unsigned long GLS_POLYMODE_LINE ;

 unsigned long GLS_SRCBLEND_BITS ;
 int GL_ALPHA_TEST ;
 int GL_BLEND ;
 int GL_DEPTH_TEST ;
 int GL_DST_ALPHA ;
 int GL_DST_COLOR ;
 int GL_EQUAL ;
 int GL_FALSE ;
 int GL_FILL ;
 int GL_FRONT_AND_BACK ;
 int GL_GEQUAL ;
 int GL_GREATER ;
 int GL_LEQUAL ;
 int GL_LESS ;
 int GL_LINE ;
 int GL_ONE ;
 int GL_ONE_MINUS_DST_ALPHA ;
 int GL_ONE_MINUS_DST_COLOR ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_ONE_MINUS_SRC_COLOR ;
 int GL_SRC_ALPHA ;
 int GL_SRC_ALPHA_SATURATE ;
 int GL_SRC_COLOR ;
 int GL_TRUE ;
 int GL_ZERO ;
 int assert (int ) ;
 TYPE_2__ glState ;
 int qglAlphaFunc (int ,float) ;
 int qglBlendFunc (int ,int ) ;
 int qglDepthFunc (int ) ;
 int qglDepthMask (int ) ;
 int qglDisable (int ) ;
 int qglEnable (int ) ;
 int qglPolygonMode (int ,int ) ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;

void GL_State( unsigned long stateBits )
{
 unsigned long diff = stateBits ^ glState.glStateBits;

 if ( !diff )
 {
  return;
 }




 if ( diff & GLS_DEPTHFUNC_EQUAL )
 {
  if ( stateBits & GLS_DEPTHFUNC_EQUAL )
  {
   qglDepthFunc( GL_EQUAL );
  }
  else
  {
   qglDepthFunc( GL_LEQUAL );
  }
 }




 if ( diff & ( GLS_SRCBLEND_BITS | GLS_DSTBLEND_BITS ) )
 {
  GLenum srcFactor, dstFactor;

  if ( stateBits & ( GLS_SRCBLEND_BITS | GLS_DSTBLEND_BITS ) )
  {
   switch ( stateBits & GLS_SRCBLEND_BITS )
   {
   case 128:
    srcFactor = GL_ZERO;
    break;
   case 133:
    srcFactor = GL_ONE;
    break;
   case 134:
    srcFactor = GL_DST_COLOR;
    break;
   case 131:
    srcFactor = GL_ONE_MINUS_DST_COLOR;
    break;
   case 129:
    srcFactor = GL_SRC_ALPHA;
    break;
   case 130:
    srcFactor = GL_ONE_MINUS_SRC_ALPHA;
    break;
   case 135:
    srcFactor = GL_DST_ALPHA;
    break;
   case 132:
    srcFactor = GL_ONE_MINUS_DST_ALPHA;
    break;
   case 136:
    srcFactor = GL_SRC_ALPHA_SATURATE;
    break;
   default:
    srcFactor = GL_ONE;
    ri.Error( ERR_DROP, "GL_State: invalid src blend state bits\n" );
    break;
   }

   switch ( stateBits & GLS_DSTBLEND_BITS )
   {
   case 137:
    dstFactor = GL_ZERO;
    break;
   case 143:
    dstFactor = GL_ONE;
    break;
   case 138:
    dstFactor = GL_SRC_COLOR;
    break;
   case 140:
    dstFactor = GL_ONE_MINUS_SRC_COLOR;
    break;
   case 139:
    dstFactor = GL_SRC_ALPHA;
    break;
   case 141:
    dstFactor = GL_ONE_MINUS_SRC_ALPHA;
    break;
   case 144:
    dstFactor = GL_DST_ALPHA;
    break;
   case 142:
    dstFactor = GL_ONE_MINUS_DST_ALPHA;
    break;
   default:
    dstFactor = GL_ONE;
    ri.Error( ERR_DROP, "GL_State: invalid dst blend state bits\n" );
    break;
   }

   qglEnable( GL_BLEND );
   qglBlendFunc( srcFactor, dstFactor );
  }
  else
  {
   qglDisable( GL_BLEND );
  }
 }




 if ( diff & GLS_DEPTHMASK_TRUE )
 {
  if ( stateBits & GLS_DEPTHMASK_TRUE )
  {
   qglDepthMask( GL_TRUE );
  }
  else
  {
   qglDepthMask( GL_FALSE );
  }
 }




 if ( diff & GLS_POLYMODE_LINE )
 {
  if ( stateBits & GLS_POLYMODE_LINE )
  {
   qglPolygonMode( GL_FRONT_AND_BACK, GL_LINE );
  }
  else
  {
   qglPolygonMode( GL_FRONT_AND_BACK, GL_FILL );
  }
 }




 if ( diff & GLS_DEPTHTEST_DISABLE )
 {
  if ( stateBits & GLS_DEPTHTEST_DISABLE )
  {
   qglDisable( GL_DEPTH_TEST );
  }
  else
  {
   qglEnable( GL_DEPTH_TEST );
  }
 }




 if ( diff & GLS_ATEST_BITS )
 {
  switch ( stateBits & GLS_ATEST_BITS )
  {
  case 0:
   qglDisable( GL_ALPHA_TEST );
   break;
  case 146:
   qglEnable( GL_ALPHA_TEST );
   qglAlphaFunc( GL_GREATER, 0.0f );
   break;
  case 145:
   qglEnable( GL_ALPHA_TEST );
   qglAlphaFunc( GL_LESS, 0.5f );
   break;
  case 147:
   qglEnable( GL_ALPHA_TEST );
   qglAlphaFunc( GL_GEQUAL, 0.5f );
   break;
  default:
   assert( 0 );
   break;
  }
 }

 glState.glStateBits = stateBits;
}
