
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unif_centre2; int unif_scale2; int program2; int buf; int tex_fb; } ;
typedef int GLfloat ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_ARRAY_BUFFER ;
 int GL_FRAMEBUFFER ;
 int GL_TRIANGLE_FAN ;
 int check () ;
 int glBindBuffer (int ,int ) ;
 int glBindFramebuffer (int ,int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glFinish () ;
 int glFlush () ;
 int glUniform2f (int ,int ,int ) ;
 int glUseProgram (int ) ;

__attribute__((used)) static void draw_mandelbrot_to_texture(CUBE_STATE_T *state, GLfloat cx, GLfloat cy, GLfloat scale)
{

        glBindFramebuffer(GL_FRAMEBUFFER,state->tex_fb);
        check();
        glBindBuffer(GL_ARRAY_BUFFER, state->buf);

        glUseProgram ( state->program2 );
        check();

        glUniform2f(state->unif_scale2, scale, scale);
        glUniform2f(state->unif_centre2, cx, cy);
        check();
        glDrawArrays ( GL_TRIANGLE_FAN, 0, 4 );
        check();

        glFlush();
        glFinish();
        check();
}
