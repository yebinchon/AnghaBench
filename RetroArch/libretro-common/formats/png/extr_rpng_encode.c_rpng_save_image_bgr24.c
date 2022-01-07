
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int intfstream_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int free (int *) ;
 int intfstream_close (int *) ;
 int * intfstream_open_file (char const*,int ,int ) ;
 int rpng_save_image_stream (int const*,int *,unsigned int,unsigned int,int,int) ;

bool rpng_save_image_bgr24(const char *path, const uint8_t *data,
      unsigned width, unsigned height, unsigned pitch)
{
   bool ret = 0;
   intfstream_t* intf_s = ((void*)0);

   intf_s = intfstream_open_file(path,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   ret = rpng_save_image_stream(data, intf_s, width, height,
                                (signed) pitch, 3);
   intfstream_close(intf_s);
   free(intf_s);
   return ret;
}
