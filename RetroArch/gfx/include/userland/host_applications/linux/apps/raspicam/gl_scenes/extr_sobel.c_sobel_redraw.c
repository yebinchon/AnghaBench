
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * attribute_locations; int program; } ;
struct TYPE_4__ {int y_texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int GLCHK (int ) ;
 int GL_ARRAY_BUFFER ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_TEXTURE0 ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int GL_TRIANGLES ;
 int glActiveTexture (int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int ) ;
 int glUseProgram (int ) ;
 int glVertexAttribPointer (int ,int,int ,int ,int ,int ) ;
 int quad_vbo ;
 TYPE_2__ sobel_shader ;

__attribute__((used)) static int sobel_redraw(RASPITEX_STATE* state)
{
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   GLCHK(glUseProgram(sobel_shader.program));


   GLCHK(glActiveTexture(GL_TEXTURE0));
   GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, state->y_texture));
   GLCHK(glBindBuffer(GL_ARRAY_BUFFER, quad_vbo));
   GLCHK(glEnableVertexAttribArray(sobel_shader.attribute_locations[0]));
   GLCHK(glVertexAttribPointer(sobel_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, 0));
   GLCHK(glDrawArrays(GL_TRIANGLES, 0, 6));

   return 0;
}
