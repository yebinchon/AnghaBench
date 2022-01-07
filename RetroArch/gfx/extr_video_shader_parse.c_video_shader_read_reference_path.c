
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int PATH_MAX_LENGTH ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int STRLEN_CONST (char*) ;
 int filestream_close (int *) ;
 char* filestream_getline (int *) ;
 int * filestream_open (char const*,int ,int ) ;
 int fill_pathname_resolve_relative (char*,char const*,char*,int ) ;
 int free (char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ malloc (int ) ;
 int path_is_absolute (char*) ;
 int path_is_valid (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char*,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

char *video_shader_read_reference_path(const char *path)
{
   char *reference = ((void*)0);
   RFILE *file = ((void*)0);
   char *line = ((void*)0);

   if (string_is_empty(path))
     goto end;
   if (!path_is_valid(path))
     goto end;

   file = filestream_open(path, RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
     goto end;

   line = filestream_getline(file);
   filestream_close(file);

   if (line && !strncmp("#reference", line, STRLEN_CONST("#reference")))
   {
      char *ref_path = line + STRLEN_CONST("#reference");


      if (!isspace(*ref_path))
         goto end;
      ref_path++;

      while (isspace(*ref_path))
         ref_path++;

      if (*ref_path == '\"')
      {

         char *p;
         ref_path++;

         p = ref_path;
         while (*p != '\0' && *p != '\"')
            p++;

         if (*p == '\"')
         {
            *p = '\0';
         }
         else
         {

            p--;
            while (isspace(*p))
               *p-- = '\0';
         }
      }
      else
      {

         char *end = ref_path + strlen(ref_path) - 1;
         while (isspace(*end))
            *end-- = '\0';
      }

      if (string_is_empty(ref_path))
         goto end;

      reference = (char *)malloc(PATH_MAX_LENGTH);

      if (!reference)
         goto end;


      if (!path_is_absolute(ref_path))
      {
         fill_pathname_resolve_relative(reference,
               path, ref_path, PATH_MAX_LENGTH);
      }
      else
         strlcpy(reference, ref_path, PATH_MAX_LENGTH);
   }

end:
   if (line)
      free(line);

   return reference;
}
