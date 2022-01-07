
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLboolean ;


 scalar_t__ GL_FALSE ;
 scalar_t__ GL_TRUE ;

__attribute__((used)) static const char * BooleanToString( GLboolean b )
{
 if ( b == GL_FALSE )
  return "GL_FALSE";
 else if ( b == GL_TRUE )
  return "GL_TRUE";
 else
  return "OUT OF RANGE FOR BOOLEAN";
}
