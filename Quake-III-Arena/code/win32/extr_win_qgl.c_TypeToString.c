
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
__attribute__((used)) static const char * TypeToString( GLenum t )
{
 switch ( t )
 {
 case 135:
  return "GL_BYTE";
 case 130:
  return "GL_UNSIGNED_BYTE";
 case 131:
  return "GL_SHORT";
 case 128:
  return "GL_UNSIGNED_SHORT";
 case 132:
  return "GL_INT";
 case 129:
  return "GL_UNSIGNED_INT";
 case 133:
  return "GL_FLOAT";
 case 134:
  return "GL_DOUBLE";
 default:
  return "!!! UNKNOWN !!!";
 }
}
