
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int GLCHK (int ) ;
 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int GL_TRIANGLES ;
 int GL_VERTEX_ARRAY ;
 int angle ;
 int glBindTexture (int ,int ) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableClientState (int ) ;
 int glLoadIdentity () ;
 int glRotatef (int ,double,double,double) ;
 int glTexCoordPointer (int,int ,int ,int ) ;
 int glVertexPointer (int,int ,int ,int ) ;
 int tex_coords ;
 int vcos_countof (int ) ;
 int vertices ;

__attribute__((used)) static int square_redraw(RASPITEX_STATE *state)
{

   GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, state->texture));
   glLoadIdentity();
   glRotatef(angle, 0.0, 0.0, 1.0);
   glEnableClientState(GL_VERTEX_ARRAY);
   glVertexPointer(3, GL_FLOAT, 0, vertices);
   glDisableClientState(GL_COLOR_ARRAY);
   glEnableClientState(GL_TEXTURE_COORD_ARRAY);
   glTexCoordPointer(2, GL_FLOAT, 0, tex_coords);
   GLCHK(glDrawArrays(GL_TRIANGLES, 0, vcos_countof(tex_coords) / 2));
   return 0;
}
