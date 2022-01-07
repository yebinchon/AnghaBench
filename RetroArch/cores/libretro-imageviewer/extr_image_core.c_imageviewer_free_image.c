
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * image_buffer ;
 int image_texture ;
 int image_texture_free (int *) ;

__attribute__((used)) static void imageviewer_free_image(void)
{




   image_texture_free(&image_texture);

   image_buffer = ((void*)0);
}
