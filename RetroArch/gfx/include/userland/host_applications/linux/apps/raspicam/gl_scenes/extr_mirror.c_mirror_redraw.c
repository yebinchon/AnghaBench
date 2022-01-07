
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * attribute_locations; int * uniform_locations; int program; } ;
struct TYPE_4__ {int texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;
typedef float GLfloat ;


 int GLCHK (int ) ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int GL_TRIANGLES ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glDisableVertexAttribArray (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int ) ;
 int glUniform1f (int ,float) ;
 int glUseProgram (int ) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,float*) ;
 TYPE_2__ mirror_shader ;

__attribute__((used)) static int mirror_redraw(RASPITEX_STATE *raspitex_state) {
    static float offset = 0.0;


    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


    glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->texture);

    offset += 0.05;
    GLCHK(glUseProgram(mirror_shader.program));
    GLCHK(glEnableVertexAttribArray(mirror_shader.attribute_locations[0]));
    GLfloat varray[] = {
        -1.0f, -1.0f,
        1.0f, 1.0f,
        1.0f, -1.0f,

        -1.0f, 1.0f,
        1.0f, 1.0f,
        -1.0f, -1.0f,
    };
    GLCHK(glVertexAttribPointer(mirror_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, varray));
    GLCHK(glUniform1f(mirror_shader.uniform_locations[1], offset));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));

    GLCHK(glDisableVertexAttribArray(mirror_shader.attribute_locations[0]));
    GLCHK(glUseProgram(0));
    return 0;
}
