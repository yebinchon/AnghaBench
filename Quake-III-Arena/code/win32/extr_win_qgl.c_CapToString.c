
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char * CapToString( GLenum cap )
{
 static char buffer[1024];

 switch ( cap )
 {
 case 130:
  return "GL_TEXTURE_2D";
 case 136:
  return "GL_BLEND";
 case 132:
  return "GL_DEPTH_TEST";
 case 133:
  return "GL_CULL_FACE";
 case 135:
  return "GL_CLIP_PLANE0";
 case 134:
  return "GL_COLOR_ARRAY";
 case 129:
  return "GL_TEXTURE_COORD_ARRAY";
 case 128:
  return "GL_VERTEX_ARRAY";
 case 137:
  return "GL_ALPHA_TEST";
 case 131:
  return "GL_STENCIL_TEST";
 default:
  sprintf( buffer, "0x%x", cap );
 }

 return buffer;
}
