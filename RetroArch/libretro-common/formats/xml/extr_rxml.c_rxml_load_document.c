
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rxml_document_t ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int filestream_close (int *) ;
 long filestream_get_size (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 size_t filestream_read (int *,char*,long) ;
 int free (char*) ;
 scalar_t__ malloc (long) ;
 int * rxml_load_document_string (char*) ;

rxml_document_t *rxml_load_document(const char *path)
{
   rxml_document_t *doc;
   char *memory_buffer = ((void*)0);
   long len = 0;
   RFILE *file = filestream_open(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (!file)
      return ((void*)0);

   len = filestream_get_size(file);
   memory_buffer = (char*)malloc(len + 1);
   if (!memory_buffer)
      goto error;

   memory_buffer[len] = '\0';
   if (filestream_read(file, memory_buffer, len) != (size_t)len)
      goto error;

   filestream_close(file);
   file = ((void*)0);

   doc = rxml_load_document_string(memory_buffer);

   free(memory_buffer);
   return doc;

error:
   free(memory_buffer);
   if(file)
      filestream_close(file);
   return ((void*)0);
}
