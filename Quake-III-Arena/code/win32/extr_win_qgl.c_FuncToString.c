
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
__attribute__((used)) static const char * FuncToString( GLenum f )
{
 switch ( f )
 {
 case 135:
  return "GL_ALWAYS";
 case 129:
  return "GL_NEVER";
 case 131:
  return "GL_LEQUAL";
 case 130:
  return "GL_LESS";
 case 134:
  return "GL_EQUAL";
 case 132:
  return "GL_GREATER";
 case 133:
  return "GL_GEQUAL";
 case 128:
  return "GL_NOTEQUAL";
 default:
  return "!!! UNKNOWN !!!";
 }
}
