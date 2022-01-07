
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VCSM_CACHE_TYPE_T ;
struct TYPE_9__ {int vcsm_handle; } ;
struct TYPE_8__ {int * attribute_locations; int program; } ;
struct TYPE_7__ {int * attribute_locations; int program; } ;
struct TYPE_6__ {int height; int width; int y; int x; int y_texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int GLCHK (int ) ;
 int GL_ARRAY_BUFFER ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_FRAMEBUFFER ;
 int GL_TEXTURE0 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int GL_TRIANGLES ;
 int VCOS_FUNCTION ;
 int VCSM_CACHE_TYPE_HOST ;
 int fb_height ;
 int fb_name ;
 int fb_tex_name ;
 int fb_width ;
 int glActiveTexture (int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindFramebuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glClearColor (int,int ,int ,int) ;
 int glDisableVertexAttribArray (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int ) ;
 int glFinish () ;
 int glUseProgram (int ) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,int ) ;
 int glViewport (int ,int ,int ,int ) ;
 int quad_vbo ;
 int vcos_log_error (char*,int ) ;
 int vcos_log_trace (char*,int ,...) ;
 TYPE_5__ vcsm_info ;
 scalar_t__ vcsm_lock_cache (int ,int ,int *) ;
 int vcsm_square_draw_pattern (unsigned char*) ;
 TYPE_4__ vcsm_square_oes_shader ;
 TYPE_2__ vcsm_square_shader ;
 int vcsm_unlock_ptr (unsigned char*) ;

__attribute__((used)) static int vcsm_square_redraw(RASPITEX_STATE *raspitex_state)
{
    unsigned char *vcsm_buffer = ((void*)0);
    VCSM_CACHE_TYPE_T cache_type;

    vcos_log_trace("%s", VCOS_FUNCTION);

    glClearColor(255, 0, 0, 255);

    GLCHK(glBindFramebuffer(GL_FRAMEBUFFER, fb_name));
    GLCHK(glViewport(0, 0, fb_width, fb_height));
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


    GLCHK(glUseProgram(vcsm_square_oes_shader.program));
    GLCHK(glActiveTexture(GL_TEXTURE0));
    GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->y_texture));
    GLCHK(glBindBuffer(GL_ARRAY_BUFFER, quad_vbo));
    GLCHK(glEnableVertexAttribArray(vcsm_square_oes_shader.attribute_locations[0]));
    GLCHK(glVertexAttribPointer(vcsm_square_oes_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, 0));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));

    GLCHK(glFinish());


    vcsm_buffer = (unsigned char *) vcsm_lock_cache(vcsm_info.vcsm_handle, VCSM_CACHE_TYPE_HOST, &cache_type);
    if (! vcsm_buffer) {
        vcos_log_error("Failed to lock VCSM buffer for handle %d\n", vcsm_info.vcsm_handle);
        return -1;
    }
    vcos_log_trace("Locked vcsm handle %d at %p\n", vcsm_info.vcsm_handle, vcsm_buffer);

    vcsm_square_draw_pattern(vcsm_buffer);



    vcsm_unlock_ptr(vcsm_buffer);


    GLCHK(glBindFramebuffer(GL_FRAMEBUFFER, 0));


    GLCHK(glViewport(raspitex_state->x, raspitex_state->y, raspitex_state->width, raspitex_state->height));
    GLCHK(glUseProgram(vcsm_square_shader.program));
    GLCHK(glActiveTexture(GL_TEXTURE0));
    GLCHK(glBindTexture(GL_TEXTURE_2D, fb_tex_name));
    GLCHK(glEnableVertexAttribArray(vcsm_square_shader.attribute_locations[0]));
    GLCHK(glVertexAttribPointer(vcsm_square_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, 0));
    GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));

    GLCHK(glDisableVertexAttribArray(vcsm_square_shader.attribute_locations[0]));
    GLCHK(glUseProgram(0));

    return 0;
}
