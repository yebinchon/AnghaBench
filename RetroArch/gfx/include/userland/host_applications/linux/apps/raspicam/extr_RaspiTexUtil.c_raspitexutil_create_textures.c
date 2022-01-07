
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_texture; int u_texture; int y_texture; int texture; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int GLCHK (int ) ;
 int glGenTextures (int,int *) ;

int raspitexutil_create_textures(RASPITEX_STATE *raspitex_state)
{
   GLCHK(glGenTextures(1, &raspitex_state->texture));
   GLCHK(glGenTextures(1, &raspitex_state->y_texture));
   GLCHK(glGenTextures(1, &raspitex_state->u_texture));
   GLCHK(glGenTextures(1, &raspitex_state->v_texture));
   return 0;
}
