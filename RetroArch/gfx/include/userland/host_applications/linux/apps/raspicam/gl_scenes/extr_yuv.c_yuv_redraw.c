
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * attribute_locations; int program; } ;
struct TYPE_4__ {int texture; int v_texture; int u_texture; int y_texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int GLCHK (int ) ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_TEXTURE0 ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int GL_TRIANGLES ;
 int glActiveTexture (int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glDisableVertexAttribArray (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int ) ;
 int glUseProgram (int ) ;
 int glVertexAttrib2f (int ,float,float) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,int ) ;
 int varray ;
 TYPE_2__ yuv_shader ;

__attribute__((used)) static int yuv_redraw(RASPITEX_STATE *raspitex_state)
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    GLCHK(glUseProgram(yuv_shader.program));
    GLCHK(glActiveTexture(GL_TEXTURE0));
    GLCHK(glEnableVertexAttribArray(yuv_shader.attribute_locations[0]));
    GLCHK(glVertexAttribPointer(yuv_shader.attribute_locations[0],
             2, GL_FLOAT, GL_FALSE, 0, varray));


    GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->y_texture));
    GLCHK(glVertexAttrib2f(yuv_shader.attribute_locations[1], -1.0f, 1.0f));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));


    GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->u_texture));
    GLCHK(glVertexAttrib2f(yuv_shader.attribute_locations[1], 0.0f, 1.0f));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));


    GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->v_texture));
    GLCHK(glVertexAttrib2f(yuv_shader.attribute_locations[1], 0.0f, 0.0f));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));


    GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->texture));
    GLCHK(glVertexAttrib2f(yuv_shader.attribute_locations[1], -1.0f, 0.0f));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));

    GLCHK(glDisableVertexAttribArray(yuv_shader.attribute_locations[0]));
    GLCHK(glUseProgram(0));
    return 0;
}
