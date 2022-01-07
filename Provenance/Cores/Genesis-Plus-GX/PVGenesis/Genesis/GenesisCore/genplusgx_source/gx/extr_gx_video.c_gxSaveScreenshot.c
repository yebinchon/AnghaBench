
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gx_texture ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int gxCopyScreenshot (int *) ;
 int gxTextureWritePNG (int *,int *) ;

void gxSaveScreenshot(char *filename)
{

  gx_texture texture;
  gxCopyScreenshot(&texture);


  FILE *f = fopen(filename,"wb");
  if (f)
  {

    gxTextureWritePNG(&texture,f);
    fclose(f);
  }
}
