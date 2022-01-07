
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int errno ;
 int filestream_close (int *) ;
 scalar_t__ filestream_get_size (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 scalar_t__ filestream_read (int *,void*,scalar_t__) ;
 int fprintf (int ,char*,char const*,char*) ;
 int free (void*) ;
 void* malloc (size_t) ;
 int stderr ;
 char* strerror (int ) ;

int64_t filestream_read_file(const char *path, void **buf, int64_t *len)
{
   int64_t ret = 0;
   int64_t content_buf_size = 0;
   void *content_buf = ((void*)0);
   RFILE *file = filestream_open(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      fprintf(stderr, "Failed to open %s: %s\n", path, strerror(errno));
      goto error;
   }

   content_buf_size = filestream_get_size(file);

   if (content_buf_size < 0)
      goto error;

   content_buf = malloc((size_t)(content_buf_size + 1));

   if (!content_buf)
      goto error;
   if ((int64_t)(uint64_t)(content_buf_size + 1) != (content_buf_size + 1))
      goto error;

   ret = filestream_read(file, content_buf, (int64_t)content_buf_size);
   if (ret < 0)
   {
      fprintf(stderr, "Failed to read %s: %s\n", path, strerror(errno));
      goto error;
   }

   filestream_close(file);

   *buf = content_buf;



   ((char*)content_buf)[ret] = '\0';

   if (len)
      *len = ret;

   return 1;

error:
   if (file)
      filestream_close(file);
   if (content_buf)
      free(content_buf);
   if (len)
      *len = -1;
   *buf = ((void*)0);
   return 0;
}
