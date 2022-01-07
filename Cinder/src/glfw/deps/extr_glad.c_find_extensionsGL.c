
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GLAD_GL_ARB_multisample ;
 void* GLAD_GL_ARB_robustness ;
 void* GLAD_GL_EXT_separate_specular_color ;
 void* has_ext (char*) ;

__attribute__((used)) static void find_extensionsGL(void) {
 GLAD_GL_EXT_separate_specular_color = has_ext("GL_EXT_separate_specular_color");
 GLAD_GL_ARB_multisample = has_ext("GL_ARB_multisample");
 GLAD_GL_ARB_robustness = has_ext("GL_ARB_robustness");
}
