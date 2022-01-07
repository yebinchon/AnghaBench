
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int intfstream_t ;
typedef scalar_t__ int64_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int SEEK_END ;
 int SEEK_SET ;
 int free (int *) ;
 int intfstream_close (int *) ;
 int intfstream_get_serial (int *,char*) ;
 int * intfstream_open_file (char const*,int ,int ) ;
 int * intfstream_open_memory (int *,int ,int ,scalar_t__) ;
 scalar_t__ intfstream_read (int *,int *,scalar_t__) ;
 int intfstream_seek (int *,scalar_t__,int ) ;
 scalar_t__ intfstream_tell (int *) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static bool intfstream_file_get_serial(const char *name,
      uint64_t offset, uint64_t size, char *serial)
{
   int rv;
   uint8_t *data = ((void*)0);
   int64_t file_size = -1;
   intfstream_t *fd = intfstream_open_file(name,
         RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

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

      data = (uint8_t*)malloc((size_t)size);

      if (intfstream_read(fd, data, size) != (int64_t) size)
      {
         free(data);
         goto error;
      }

      intfstream_close(fd);
      free(fd);
      fd = intfstream_open_memory(data, RETRO_VFS_FILE_ACCESS_READ,
            RETRO_VFS_FILE_ACCESS_HINT_NONE,
            size);
      if (!fd)
      {
         free(data);
         return 0;
      }
   }

   rv = intfstream_get_serial(fd, serial);
   intfstream_close(fd);
   free(fd);
   free(data);
   return rv;

error:
   intfstream_close(fd);
   free(fd);
   return 0;
}
