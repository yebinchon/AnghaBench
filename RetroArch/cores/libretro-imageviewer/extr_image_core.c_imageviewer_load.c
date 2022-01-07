
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int supports_rgba; int height; int width; scalar_t__ pixels; } ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int filestream_close (int *) ;
 size_t filestream_get_size (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 int filestream_read (int *,void*,size_t) ;
 int free (void*) ;
 int * image_buffer ;
 int image_height ;
 TYPE_1__ image_texture ;
 int image_texture_load (TYPE_1__*,char const*) ;
 int image_width ;
 int imageviewer_free_image () ;
 void* malloc (size_t) ;
 int process_new_image ;
 scalar_t__ stbi_load_from_memory (void*,size_t,int *,int *,int*,int) ;

__attribute__((used)) static bool imageviewer_load(const char *path, int image_index)
{
   imageviewer_free_image();
   if (!image_texture_load(&image_texture, path))
      return 0;
   image_buffer = (uint32_t*)image_texture.pixels;
   image_width = image_texture.width;
   image_height = image_texture.height;

   if (!image_buffer)
      return 0;

   process_new_image = 1;

   return 1;
}
