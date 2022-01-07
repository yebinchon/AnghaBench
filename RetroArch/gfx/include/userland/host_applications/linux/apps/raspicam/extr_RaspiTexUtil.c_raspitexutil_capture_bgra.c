
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int const width; int const height; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 scalar_t__ GL_NO_ERROR ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 int VCOS_FUNCTION ;
 int * calloc (size_t,int) ;
 int free (int *) ;
 scalar_t__ glGetError () ;
 int glReadPixels (int ,int ,int const,int const,int ,int ,int *) ;
 int vcos_log_trace (char*,int ,int const,int const,int const) ;

int raspitexutil_capture_bgra(RASPITEX_STATE *state,
                              uint8_t **buffer, size_t *buffer_size)
{
   const int bytes_per_pixel = 4;

   vcos_log_trace("%s: %dx%d %d", VCOS_FUNCTION,
                  state->width, state->height, bytes_per_pixel);

   *buffer_size = state->width * state->height * bytes_per_pixel;
   *buffer = calloc(*buffer_size, 1);
   if (! *buffer)
      goto error;

   glReadPixels(0, 0, state->width, state->height, GL_RGBA,
                GL_UNSIGNED_BYTE, *buffer);
   if (glGetError() != GL_NO_ERROR)
      goto error;

   return 0;

error:
   *buffer_size = 0;
   if (*buffer)
      free(*buffer);
   *buffer = ((void*)0);
   return -1;
}
