
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * uniform_locations; int program; } ;
struct TYPE_6__ {int egl_config_attribs; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int GLCHK (int ) ;
 int glUniform1i (int ,int ) ;
 int glUseProgram (int ) ;
 int raspitexutil_build_shader_program (TYPE_2__*) ;
 int raspitexutil_gl_init_2_0 (TYPE_1__*) ;
 int yuv_egl_config_attribs ;
 TYPE_2__ yuv_shader ;

__attribute__((used)) static int yuv_init(RASPITEX_STATE *state)
{
    int rc;
    state->egl_config_attribs = yuv_egl_config_attribs;
    rc = raspitexutil_gl_init_2_0(state);
    if (rc != 0)
       goto end;

    rc = raspitexutil_build_shader_program(&yuv_shader);
    GLCHK(glUseProgram(yuv_shader.program));
    GLCHK(glUniform1i(yuv_shader.uniform_locations[0], 0));
end:
    return rc;
}
