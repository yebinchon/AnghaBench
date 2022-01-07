
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* typing_buffer; int render_radius; int ortho; int fov; int height; int width; int typing; } ;
struct TYPE_11__ {int extra1; int sampler; int matrix; int program; } ;
struct TYPE_9__ {int ry; int rx; int z; int y; int x; } ;
struct TYPE_10__ {TYPE_1__ state; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Player ;
typedef int GLuint ;
typedef int GLfloat ;
typedef TYPE_3__ Attrib ;


 scalar_t__ CRAFT_KEY_SIGN ;
 int GL_FALSE ;
 int MAX_SIGN_LENGTH ;
 int _gen_sign_buffer (int *,int,int,int,int,char*) ;
 int del_buffer (int ) ;
 int draw_sign (TYPE_3__*,int ,int) ;
 TYPE_7__* g ;
 int gen_faces (int,int,int *) ;
 int glUniform1i (int ,int) ;
 int glUniformMatrix4fv (int ,int,int ,float*) ;
 int glUseProgram (int ) ;
 int hit_test_face (TYPE_2__*,int*,int*,int*,int*) ;
 int * malloc_faces (int,int ) ;
 int set_matrix_3d (float*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int strlen (char*) ;
 int strncpy (char*,scalar_t__*,int) ;

void render_sign(Attrib *attrib, Player *player) {
    if (!g->typing || g->typing_buffer[0] != CRAFT_KEY_SIGN) {
        return;
    }
    int x, y, z, face;
    if (!hit_test_face(player, &x, &y, &z, &face)) {
        return;
    }
    State *s = &player->state;
    float matrix[16];
    set_matrix_3d(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    glUseProgram(attrib->program);
    glUniformMatrix4fv(attrib->matrix, 1, GL_FALSE, matrix);
    glUniform1i(attrib->sampler, 3);
    glUniform1i(attrib->extra1, 1);
    char text[MAX_SIGN_LENGTH];
    strncpy(text, g->typing_buffer + 1, MAX_SIGN_LENGTH);
    text[MAX_SIGN_LENGTH - 1] = '\0';
    GLfloat *data = malloc_faces(5, strlen(text));
    int length = _gen_sign_buffer(data, x, y, z, face, text);
    GLuint buffer = gen_faces(5, length, data);
    draw_sign(attrib, buffer, length);
    del_buffer(buffer);
}
