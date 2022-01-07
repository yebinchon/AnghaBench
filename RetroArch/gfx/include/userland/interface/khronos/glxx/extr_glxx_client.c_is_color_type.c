
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;


 scalar_t__ GL_FIXED ;
 scalar_t__ GL_FLOAT ;
 scalar_t__ GL_UNSIGNED_BYTE ;

__attribute__((used)) static bool is_color_type(GLenum type)
{
   return type == GL_UNSIGNED_BYTE ||
          type == GL_FIXED ||
          type == GL_FLOAT;
}
