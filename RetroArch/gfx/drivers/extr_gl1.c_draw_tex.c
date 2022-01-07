
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ tex; scalar_t__ menu_tex; scalar_t__ rotation; scalar_t__ menu_smooth; scalar_t__ smooth; scalar_t__ supports_bgra; } ;
typedef TYPE_1__ gl1_t ;
typedef scalar_t__ GLuint ;
typedef int GLint ;
typedef int GLenum ;


 int GL_BGRA_EXT ;
 int GL_COLOR_ARRAY ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_FLOAT ;
 int GL_LINEAR ;
 int GL_MODELVIEW ;
 int GL_NEAREST ;
 int GL_PROJECTION ;
 int GL_REPEAT ;
 int GL_RGB8 ;
 int GL_RGBA ;
 int GL_SCISSOR_TEST ;
 int GL_STENCIL_TEST ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_TRIANGLE_STRIP ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int GL_UNSIGNED_BYTE ;
 int GL_VERTEX_ARRAY ;
 int free (int *) ;
 int glBindTexture (int ,scalar_t__) ;
 int glColorPointer (int,int ,int ,float*) ;
 int glDisable (int ) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnable (int ) ;
 int glEnableClientState (int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glPixelStorei (int ,int) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glRotatef (scalar_t__,float,float,float) ;
 int glTexCoordPointer (int,int ,int ,float*) ;
 int glTexImage2D (int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int glTexParameteri (int ,int ,int ) ;
 int glVertexPointer (int,int ,int ,float*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void draw_tex(gl1_t *gl1, int pot_width, int pot_height, int width, int height, GLuint tex, const void *frame_to_copy)
{
   uint8_t *frame = ((void*)0);
   uint8_t *frame_rgba = ((void*)0);

   GLint internalFormat = GL_RGB8;
   GLenum format = gl1->supports_bgra ? GL_BGRA_EXT : GL_RGBA;
   GLenum type = GL_UNSIGNED_BYTE;

   float vertices[] = {
    -1.0f, -1.0f, 0.0f,
    -1.0f, 1.0f, 0.0f,
    1.0f, -1.0f, 0.0f,
    1.0f, 1.0f, 0.0f,
   };

   float colors[] = {
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f,
      1.0f, 1.0f, 1.0f, 1.0f
   };

   float norm_width = (1.0f / (float)pot_width) * (float)width;
   float norm_height = (1.0f / (float)pot_height) * (float)height;

   float texcoords[] = {
      0.0f, 0.0f,
      0.0f, 0.0f,
      0.0f, 0.0f,
      0.0f, 0.0f
   };

   texcoords[1] = texcoords[5] = norm_height;
   texcoords[4] = texcoords[6] = norm_width;

   glDisable(GL_DEPTH_TEST);
   glDisable(GL_CULL_FACE);
   glDisable(GL_STENCIL_TEST);
   glDisable(GL_SCISSOR_TEST);
   glEnable(GL_TEXTURE_2D);





   glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
   glPixelStorei(GL_UNPACK_ROW_LENGTH, pot_width);

   glBindTexture(GL_TEXTURE_2D, tex);

   frame = (uint8_t*)frame_to_copy;
   if (!gl1->supports_bgra)
   {
      frame_rgba = (uint8_t*)malloc(pot_width * pot_height * 4);
      if (frame_rgba)
      {
         int x, y;
         for (y = 0; y < pot_height; y++)
         {
            for (x = 0; x < pot_width; x++)
            {
               int index = (y * pot_width + x) * 4;
               frame_rgba[index + 2] = frame[index + 0];
               frame_rgba[index + 1] = frame[index + 1];
               frame_rgba[index + 0] = frame[index + 2];
               frame_rgba[index + 3] = frame[index + 3];
            }
         }
         frame = frame_rgba;
      }
   }

   glTexImage2D(GL_TEXTURE_2D, 0, internalFormat, pot_width, pot_height, 0, format, type, frame);
   if (frame_rgba)
       free(frame_rgba);

   if (tex == gl1->tex)
   {
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (gl1->smooth ? GL_LINEAR : GL_NEAREST));
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (gl1->smooth ? GL_LINEAR : GL_NEAREST));
   }
   else if (tex == gl1->menu_tex)
   {
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (gl1->menu_smooth ? GL_LINEAR : GL_NEAREST));
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (gl1->menu_smooth ? GL_LINEAR : GL_NEAREST));
   }

   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

   glMatrixMode(GL_PROJECTION);
   glPushMatrix();
   glLoadIdentity();

   glMatrixMode(GL_MODELVIEW);
   glPushMatrix();
   glLoadIdentity();

   if (gl1->rotation && tex == gl1->tex)
      glRotatef(gl1->rotation, 0.0f, 0.0f, 1.0f);

   glEnableClientState(GL_COLOR_ARRAY);
   glEnableClientState(GL_VERTEX_ARRAY);
   glEnableClientState(GL_TEXTURE_COORD_ARRAY);

   glColorPointer(4, GL_FLOAT, 0, colors);
   glVertexPointer(3, GL_FLOAT, 0, vertices);
   glTexCoordPointer(2, GL_FLOAT, 0, texcoords);

   glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

   glDisableClientState(GL_TEXTURE_COORD_ARRAY);
   glDisableClientState(GL_VERTEX_ARRAY);
   glDisableClientState(GL_COLOR_ARRAY);

   glMatrixMode(GL_MODELVIEW);
   glPopMatrix();
   glMatrixMode(GL_PROJECTION);
   glPopMatrix();
}
