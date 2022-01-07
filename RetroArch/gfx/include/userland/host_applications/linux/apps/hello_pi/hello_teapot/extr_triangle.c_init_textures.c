
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tex; int context; int display; } ;
typedef int EGLClientBuffer ;
typedef TYPE_1__ CUBE_STATE_T ;


 int EGL_GL_TEXTURE_2D_KHR ;
 scalar_t__ EGL_NO_IMAGE_KHR ;
 int GL_CLAMP_TO_EDGE ;
 int GL_FLOAT ;
 int GL_NEAREST ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNSIGNED_BYTE ;
 int IMAGE_SIZE_HEIGHT ;
 int IMAGE_SIZE_WIDTH ;
 scalar_t__ eglCreateImageKHR (int ,int ,int ,int ,int ) ;
 scalar_t__ eglImage ;
 int exit (int) ;
 int glBindTexture (int ,scalar_t__) ;
 int glEnable (int ) ;
 int glEnableClientState (int ) ;
 int glGenTextures (int,scalar_t__*) ;
 int glTexCoordPointer (int,int ,int ,int ) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int glTexParameteri (int ,int ,int ) ;
 int printf (char*) ;
 int pthread_create (int *,int *,int ,scalar_t__) ;
 int texCoords ;
 int thread1 ;
 int video_decode_test ;

__attribute__((used)) static void init_textures(CUBE_STATE_T *state)
{

   glGenTextures(1, &state->tex);

   glBindTexture(GL_TEXTURE_2D, state->tex);
   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, IMAGE_SIZE_WIDTH, IMAGE_SIZE_HEIGHT, 0,
                GL_RGBA, GL_UNSIGNED_BYTE, ((void*)0));

   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);


   eglImage = eglCreateImageKHR(
                state->display,
                state->context,
                EGL_GL_TEXTURE_2D_KHR,
                (EGLClientBuffer)state->tex,
                0);

   if (eglImage == EGL_NO_IMAGE_KHR)
   {
      printf("eglCreateImageKHR failed.\n");
      exit(1);
   }


   pthread_create(&thread1, ((void*)0), video_decode_test, eglImage);


   glTexCoordPointer(2, GL_FLOAT, 0, texCoords);
   glEnableClientState(GL_TEXTURE_COORD_ARRAY);

   glEnable(GL_TEXTURE_2D);


   glBindTexture(GL_TEXTURE_2D, state->tex);
}
