
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void BlendToName( char *n, GLenum f )
{
 switch ( f )
 {
 case 132:
  strcpy( n, "GL_ONE" );
  break;
 case 128:
  strcpy( n, "GL_ZERO" );
  break;
 case 129:
  strcpy( n, "GL_SRC_ALPHA" );
  break;
 case 130:
  strcpy( n, "GL_ONE_MINUS_SRC_ALPHA" );
  break;
 case 133:
  strcpy( n, "GL_DST_COLOR" );
  break;
 case 131:
  strcpy( n, "GL_ONE_MINUS_DST_COLOR" );
  break;
 case 134:
  strcpy( n, "GL_DST_ALPHA" );
  break;
 default:
  sprintf( n, "0x%x", f );
 }
}
