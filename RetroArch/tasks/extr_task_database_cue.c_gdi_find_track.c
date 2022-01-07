
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef char intfstream_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ intfstream_info_t ;
typedef scalar_t__ int64_t ;


 int EINVAL ;
 int INTFSTREAM_FILE ;
 scalar_t__ MAX_TOKEN_LEN ;
 scalar_t__ PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char const*,...) ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int atoi (char*) ;
 int errno ;
 int fill_pathname_basedir (char*,char const*,scalar_t__) ;
 int fill_pathname_join (char*,char*,char*,scalar_t__) ;
 int free (char*) ;
 scalar_t__ get_token (char*,char*,scalar_t__) ;
 int intfstream_close (char*) ;
 scalar_t__ intfstream_get_file_size (char*) ;
 scalar_t__ intfstream_init (TYPE_1__*) ;
 int intfstream_open (char*,char const*,int ,int ) ;
 scalar_t__ malloc (scalar_t__) ;
 int strerror (int) ;
 int strlcpy (char*,char*,size_t) ;

int gdi_find_track(const char *gdi_path, bool first,
      char *track_path, uint64_t max_len)
{
   int rv;
   intfstream_info_t info;
   char *tmp_token = (char*)malloc(MAX_TOKEN_LEN);
   intfstream_t *fd = ((void*)0);
   uint64_t largest = 0;
   int size = -1;
   int mode = -1;
   int64_t file_size = -1;

   info.type = INTFSTREAM_FILE;

   fd = (intfstream_t*)intfstream_init(&info);

   if (!fd)
      goto error;

   if (!intfstream_open(fd, gdi_path,
            RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE))
   {
      RARCH_LOG("Could not open GDI file '%s': %s\n", gdi_path,
            strerror(errno));
      goto error;
   }

   RARCH_LOG("Parsing GDI file '%s'...\n", gdi_path);

   tmp_token[0] = '\0';

   rv = -EINVAL;


   get_token(fd, tmp_token, MAX_TOKEN_LEN);


   while (get_token(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {

      if (get_token(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }


      if (get_token(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }
      mode = atoi(tmp_token);


      if (get_token(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }
      size = atoi(tmp_token);


      if (get_token(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }


      if (!(mode == 0 && size == 2352))
      {
         char *last_file = (char*)malloc(PATH_MAX_LENGTH + 1);
         char *gdi_dir = (char*)malloc(PATH_MAX_LENGTH);

         gdi_dir[0] = '\0';

         fill_pathname_basedir(gdi_dir, gdi_path, PATH_MAX_LENGTH);

         fill_pathname_join(last_file,
               gdi_dir, tmp_token, PATH_MAX_LENGTH);
         file_size = intfstream_get_file_size(last_file);
         if (file_size < 0)
         {
            free(gdi_dir);
            free(last_file);
            goto error;
         }

         if ((uint64_t)file_size > largest)
         {
            strlcpy(track_path, last_file, (size_t)max_len);

            rv = 0;
            largest = file_size;

            if (first)
            {
               free(gdi_dir);
               free(last_file);
               goto clean;
            }
         }
         free(gdi_dir);
         free(last_file);
      }


      if (get_token(fd, tmp_token, MAX_TOKEN_LEN) <= 0)
      {
         errno = EINVAL;
         goto error;
      }
   }

clean:
   free(tmp_token);
   intfstream_close(fd);
   free(fd);
   return rv;

error:
   free(tmp_token);
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   return -errno;
}
