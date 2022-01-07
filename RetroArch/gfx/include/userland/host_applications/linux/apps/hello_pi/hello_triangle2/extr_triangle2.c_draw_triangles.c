
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int surface; int display; int unif_tex; int unif_centre; int unif_offset; int unif_scale; int unif_color; int tex; int program; int buf; } ;
typedef int GLfloat ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_ARRAY_BUFFER ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_FRAMEBUFFER ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLE_FAN ;
 int check () ;
 int eglSwapBuffers (int ,int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindFramebuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glDrawArrays (int ,int ,int) ;
 int glFinish () ;
 int glFlush () ;
 int glUniform1i (int ,int ) ;
 int glUniform2f (int ,int ,int ) ;
 int glUniform4f (int ,double,double,double,double) ;
 int glUseProgram (int ) ;

__attribute__((used)) static void draw_triangles(CUBE_STATE_T *state, GLfloat cx, GLfloat cy, GLfloat scale, GLfloat x, GLfloat y)
{

        glBindFramebuffer(GL_FRAMEBUFFER,0);

        glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
        check();

        glBindBuffer(GL_ARRAY_BUFFER, state->buf);
        check();
        glUseProgram ( state->program );
        check();
        glBindTexture(GL_TEXTURE_2D,state->tex);
        check();
        glUniform4f(state->unif_color, 0.5, 0.5, 0.8, 1.0);
        glUniform2f(state->unif_scale, scale, scale);
        glUniform2f(state->unif_offset, x, y);
        glUniform2f(state->unif_centre, cx, cy);
        glUniform1i(state->unif_tex, 0);
        check();

        glDrawArrays ( GL_TRIANGLE_FAN, 0, 4 );
        check();

        glBindBuffer(GL_ARRAY_BUFFER, 0);

        glFlush();
        glFinish();
        check();

        eglSwapBuffers(state->display, state->surface);
        check();
}
