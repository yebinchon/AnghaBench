
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int intfstream_t ;
typedef scalar_t__ int64_t ;


 int MAX_TOKEN_LEN ;
 int PATH_MAX_LENGTH ;
 int fill_pathname_basedir (char*,char const*,int ) ;
 int fill_pathname_join (char*,char*,char*,size_t) ;
 int free (char*) ;
 scalar_t__ get_token (int *,char*,int ) ;
 scalar_t__ intfstream_tell (int *) ;
 scalar_t__ malloc (int ) ;

bool gdi_next_file(intfstream_t *fd, const char *gdi_path,
      char *path, uint64_t max_len)
{
   bool rv = 0;
   char *tmp_token = (char*)malloc(MAX_TOKEN_LEN);
   int64_t offset = -1;

   tmp_token[0] = '\0';


   offset = intfstream_tell(fd);
   if (offset == 0)
      get_token(fd, tmp_token, MAX_TOKEN_LEN);


   get_token(fd, tmp_token, MAX_TOKEN_LEN);


   get_token(fd, tmp_token, MAX_TOKEN_LEN);


   get_token(fd, tmp_token, MAX_TOKEN_LEN);


   get_token(fd, tmp_token, MAX_TOKEN_LEN);


   if (get_token(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {
      char *gdi_dir = (char*)malloc(PATH_MAX_LENGTH);

      gdi_dir[0] = '\0';

      fill_pathname_basedir(gdi_dir, gdi_path, PATH_MAX_LENGTH);

      fill_pathname_join(path, gdi_dir, tmp_token, (size_t)max_len);
      rv = 1;


      get_token(fd, tmp_token, MAX_TOKEN_LEN);

      free(gdi_dir);
   }

   free(tmp_token);
   return rv;
}
