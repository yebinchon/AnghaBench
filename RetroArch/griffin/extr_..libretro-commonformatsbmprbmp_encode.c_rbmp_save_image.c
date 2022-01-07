
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rbmp_source_type { ____Placeholder_rbmp_source_type } rbmp_source_type ;
typedef int RFILE ;


 int RBMP_SOURCE_TYPE_ARGB8888 ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 int dump_content (int *,void const*,unsigned int,unsigned int,unsigned int,int) ;
 int filestream_close (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 int write_header_bmp (int *,unsigned int,unsigned int,int) ;

bool rbmp_save_image(
      const char *filename,
      const void *frame,
      unsigned width, unsigned height,
      unsigned pitch, enum rbmp_source_type type)
{
   bool ret = 0;
   RFILE *file = filestream_open(filename,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!file)
      return 0;

   ret = write_header_bmp(file, width, height, type==RBMP_SOURCE_TYPE_ARGB8888);

   if (ret)
      dump_content(file, frame, width, height, pitch, type);

   filestream_close(file);

   return ret;
}
