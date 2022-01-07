
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int intfstream_t ;


 unsigned int DEFLATE_PADDING ;
 int GOTO_END_ERROR () ;
 int PNG_ROUGH_HEADER ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int free (int *) ;
 int intfstream_get_ptr (int *) ;
 int * intfstream_open_writable_memory (int *,int ,int ,int) ;
 int intfstream_read (int *,int *,int) ;
 int intfstream_rewind (int *) ;
 scalar_t__ malloc (int) ;
 int rpng_save_image_stream (int const*,int *,unsigned int,unsigned int,int,int) ;

uint8_t* rpng_save_image_bgr24_string(const uint8_t *data,
      unsigned width, unsigned height, signed pitch, uint64_t* bytes)
{
   bool ret = 0;
   uint8_t* buf = ((void*)0);
   uint8_t* output = ((void*)0);
   int buf_length = 0;
   intfstream_t* intf_s = ((void*)0);

   buf_length = (int)(width*height*3*DEFLATE_PADDING)+PNG_ROUGH_HEADER;
   buf = (uint8_t*)malloc(buf_length*sizeof(uint8_t));
   if (!buf)
      GOTO_END_ERROR();

   intf_s = intfstream_open_writable_memory(buf,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE,
         buf_length);

   ret = rpng_save_image_stream((const uint8_t*)data,
            intf_s, width, height, pitch, 3);

   *bytes = intfstream_get_ptr(intf_s);
   intfstream_rewind(intf_s);
   output = (uint8_t*)malloc((*bytes)*sizeof(uint8_t));
   if (!output)
      GOTO_END_ERROR();
   intfstream_read(intf_s, output, *bytes);

end:
   if (buf)
      free(buf);
   if (intf_s)
      free(intf_s);
   if (ret == 0)
   {
      if (output)
         free(output);
      return ((void*)0);
   }
   return output;
}
