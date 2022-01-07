
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glsl_core ;
 unsigned int glsl_major ;
 unsigned int glsl_minor ;

void gl_glsl_set_context_type(bool core_profile,
      unsigned major, unsigned minor)
{
   glsl_core = core_profile;
   glsl_major = major;
   glsl_minor = minor;
}
