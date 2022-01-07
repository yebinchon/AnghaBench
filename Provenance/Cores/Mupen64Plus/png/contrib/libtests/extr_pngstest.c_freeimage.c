
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* tmpfile_name; int opts; scalar_t__ input_memory_size; int * input_memory; int * input_file; int image; } ;
typedef TYPE_1__ Image ;


 int KEEP_TMPFILES ;
 int fclose (int *) ;
 int free (int *) ;
 int freebuffer (TYPE_1__*) ;
 int png_image_free (int *) ;
 int remove (scalar_t__*) ;

__attribute__((used)) static void
freeimage(Image *image)
{
   freebuffer(image);
   png_image_free(&image->image);

   if (image->input_file != ((void*)0))
   {
      fclose(image->input_file);
      image->input_file = ((void*)0);
   }

   if (image->input_memory != ((void*)0))
   {
      free(image->input_memory);
      image->input_memory = ((void*)0);
      image->input_memory_size = 0;
   }

   if (image->tmpfile_name[0] != 0 && (image->opts & KEEP_TMPFILES) == 0)
   {
      (void)remove(image->tmpfile_name);
      image->tmpfile_name[0] = 0;
   }
}
