
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;


 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int glGetIntegerv (int ,scalar_t__*) ;
 scalar_t__ glGetString (int ) ;
 scalar_t__ glGetStringi (int ,scalar_t__) ;
 scalar_t__ gl_query_core_context_in_use () ;
 scalar_t__ strstr (char const*,char const*) ;

bool gl_query_extension(const char *ext)
{
   bool ret = 0;

   if (gl_query_core_context_in_use())
   {
   }
   else
   {
      const char *str = (const char*)glGetString(GL_EXTENSIONS);
      ret = str && strstr(str, ext);
   }

   return ret;
}
