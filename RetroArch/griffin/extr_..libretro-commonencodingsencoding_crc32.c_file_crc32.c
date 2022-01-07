
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int64_t ;
typedef int RFILE ;


 int CRC32_BUFFER_SIZE ;
 unsigned int CRC32_MAX_MB ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int encoding_crc32 (int ,unsigned char*,size_t) ;
 int filestream_close (int *) ;
 scalar_t__ filestream_eof (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 scalar_t__ filestream_read (int *,unsigned char*,int ) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int ) ;

uint32_t file_crc32(uint32_t crc, const char *path)
{
   unsigned i;
   RFILE *file = ((void*)0);
   unsigned char *buf = ((void*)0);
   if (!path)
      return 0;

   file = filestream_open(path, RETRO_VFS_FILE_ACCESS_READ, 0);
   if (!file)
      goto error;

   buf = (unsigned char*)malloc(CRC32_BUFFER_SIZE);
   if (!buf)
      goto error;

   for(i = 0; i < CRC32_MAX_MB; i++)
   {
      int64_t nread = filestream_read(file, buf, CRC32_BUFFER_SIZE);
      if (nread < 0)
         goto error;

      crc = encoding_crc32(crc, buf, (size_t)nread);
      if (filestream_eof(file))
         break;
   }
   free(buf);
   filestream_close(file);
   return crc;

error:
   if (buf)
      free(buf);
   if (file)
      filestream_close(file);
   return 0;
}
