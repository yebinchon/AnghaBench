
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLUNIFORMMATRIX4X3FVPROC ;
typedef scalar_t__ PFNGLUNIFORMMATRIX4X2FVPROC ;
typedef scalar_t__ PFNGLUNIFORMMATRIX3X4FVPROC ;
typedef scalar_t__ PFNGLUNIFORMMATRIX3X2FVPROC ;
typedef scalar_t__ PFNGLUNIFORMMATRIX2X4FVPROC ;
typedef scalar_t__ PFNGLUNIFORMMATRIX2X3FVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_VERSION_2_1 ;
 scalar_t__ glad_glUniformMatrix2x3fv ;
 scalar_t__ glad_glUniformMatrix2x4fv ;
 scalar_t__ glad_glUniformMatrix3x2fv ;
 scalar_t__ glad_glUniformMatrix3x4fv ;
 scalar_t__ glad_glUniformMatrix4x2fv ;
 scalar_t__ glad_glUniformMatrix4x3fv ;

__attribute__((used)) static void load_GL_VERSION_2_1(GLADloadproc load) {
 if(!GLAD_GL_VERSION_2_1) return;
 glad_glUniformMatrix2x3fv = (PFNGLUNIFORMMATRIX2X3FVPROC)load("glUniformMatrix2x3fv");
 glad_glUniformMatrix3x2fv = (PFNGLUNIFORMMATRIX3X2FVPROC)load("glUniformMatrix3x2fv");
 glad_glUniformMatrix2x4fv = (PFNGLUNIFORMMATRIX2X4FVPROC)load("glUniformMatrix2x4fv");
 glad_glUniformMatrix4x2fv = (PFNGLUNIFORMMATRIX4X2FVPROC)load("glUniformMatrix4x2fv");
 glad_glUniformMatrix3x4fv = (PFNGLUNIFORMMATRIX3X4FVPROC)load("glUniformMatrix3x4fv");
 glad_glUniformMatrix4x3fv = (PFNGLUNIFORMMATRIX4X3FVPROC)load("glUniformMatrix4x3fv");
}
