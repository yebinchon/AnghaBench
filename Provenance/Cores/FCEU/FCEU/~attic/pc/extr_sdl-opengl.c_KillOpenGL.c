
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HiBuffer ;
 int free (scalar_t__) ;
 int p_glDeleteTextures (int,scalar_t__*) ;
 scalar_t__* textures ;

void KillOpenGL(void)
{
 if(textures[0])
  p_glDeleteTextures(2, &textures[0]);
 textures[0]=0;
 if(HiBuffer)
 {
  free(HiBuffer);
  HiBuffer=0;
 }
}
