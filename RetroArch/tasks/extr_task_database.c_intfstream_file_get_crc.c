
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int intfstream_t ;
typedef scalar_t__ int64_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int SEEK_END ;
 int SEEK_SET ;
 int free (int *) ;
 int intfstream_close (int *) ;
 int intfstream_get_crc (int *,int *) ;
 int * intfstream_open_file (char const*,int ,int ) ;
 int * intfstream_open_memory (int *,int ,int ,size_t) ;
 scalar_t__ intfstream_read (int *,int *,size_t) ;
 int intfstream_seek (int *,scalar_t__,int ) ;
 scalar_t__ intfstream_tell (int *) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static bool intfstream_file_get_crc(const char *name,
      uint64_t offset, size_t size, uint32_t *crc)
{
   int rv;
   intfstream_t *fd = intfstream_open_file(name,
         RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);
   uint8_t *data = ((void*)0);
   int64_t file_size = -1;

   if (!fd)
      return 0;

   if (intfstream_seek(fd, 0, SEEK_END) == -1)
      goto error;

   file_size = intfstream_tell(fd);

   if (intfstream_seek(fd, 0, SEEK_SET) == -1)
      goto error;

   if (file_size < 0)
      goto error;

   if (offset != 0 || size < (uint64_t) file_size)
   {
      if (intfstream_seek(fd, (int64_t)offset, SEEK_SET) == -1)
         goto error;

      data = (uint8_t*)malloc(size);

      if (intfstream_read(fd, data, size) != (int64_t) size)
         goto error;

      intfstream_close(fd);
      free(fd);
      fd = intfstream_open_memory(data, RETRO_VFS_FILE_ACCESS_READ,
            RETRO_VFS_FILE_ACCESS_HINT_NONE, size);

      if (!fd)
         goto error;
   }

   rv = intfstream_get_crc(fd, crc);
   intfstream_close(fd);
   free(fd);
   free(data);
   return rv;

error:
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   if (data)
      free(data);
   return 0;
}
