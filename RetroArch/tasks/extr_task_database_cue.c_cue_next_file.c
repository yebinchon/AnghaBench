
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int intfstream_t ;


 int MAX_TOKEN_LEN ;
 int PATH_MAX_LENGTH ;
 int fill_pathname_basedir (char*,char const*,int ) ;
 int fill_pathname_join (char*,char*,char*,size_t) ;
 int free (char*) ;
 scalar_t__ get_token (int *,char*,int ) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ string_is_equal_noncase (char*,char*) ;

bool cue_next_file(intfstream_t *fd,
      const char *cue_path, char *path, uint64_t max_len)
{
   bool rv = 0;
   char *tmp_token = (char*)malloc(MAX_TOKEN_LEN);
   char *cue_dir = (char*)malloc(PATH_MAX_LENGTH);
   cue_dir[0] = '\0';

   fill_pathname_basedir(cue_dir, cue_path, PATH_MAX_LENGTH);

   tmp_token[0] = '\0';

   while (get_token(fd, tmp_token, MAX_TOKEN_LEN) > 0)
   {
      if (string_is_equal_noncase(tmp_token, "FILE"))
      {
         get_token(fd, tmp_token, MAX_TOKEN_LEN);
         fill_pathname_join(path, cue_dir, tmp_token, (size_t)max_len);
         rv = 1;
         break;
      }
   }

   free(cue_dir);
   free(tmp_token);
   return rv;
}
