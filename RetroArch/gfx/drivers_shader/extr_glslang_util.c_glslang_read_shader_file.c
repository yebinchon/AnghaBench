
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
typedef int uint8_t ;
typedef int tmp ;
struct string_list {int size; TYPE_1__* elems; } ;
typedef scalar_t__ int64_t ;
typedef int include_path ;
typedef int include_file ;
struct TYPE_2__ {char* data; } ;


 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,...) ;
 int STRLEN_CONST (char*) ;
 int filestream_read_file (char const*,void**,scalar_t__*) ;
 int fill_pathname_resolve_relative (char*,char const*,char*,int) ;
 int free (int *) ;
 int get_include_file (char const*,char*,int) ;
 char* path_basename (char const*) ;
 int snprintf (char*,int,char*,unsigned int,char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 int string_remove_all_chars (char*,char) ;
 struct string_list* string_separate (char*,char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

bool glslang_read_shader_file(const char *path,
      struct string_list *output, bool root_file)
{
   char tmp[PATH_MAX_LENGTH];
   union string_list_elem_attr attr;
   size_t i;
   const char *basename = ((void*)0);
   uint8_t *buf = ((void*)0);
   int64_t buf_len = 0;
   struct string_list *lines = ((void*)0);

   tmp[0] = '\0';
   attr.i = 0;


   if (string_is_empty(path) || !output)
      return 0;

   basename = path_basename(path);

   if (string_is_empty(basename))
      return 0;


   if (!filestream_read_file(path, (void**)&buf, &buf_len))
   {
      RARCH_ERR("Failed to open shader file: \"%s\".\n", path);
      return 0;
   }

   if (buf_len > 0)
   {

      string_remove_all_chars((char*)buf, '\r');



      lines = string_separate((char*)buf, "\n");
   }


   if (buf)
      free(buf);


   if (!lines)
      return 0;

   if (lines->size < 1)
      goto error;



   if (root_file)
   {
      const char *line = lines->elems[0].data;

      if (strncmp("#version ", line, STRLEN_CONST("#version ")))
      {
         RARCH_ERR("First line of the shader must contain a valid #version string.\n");
         goto error;
      }

      if (!string_list_append(output, line, attr))
         goto error;





      if (!string_list_append(output, "#extension GL_GOOGLE_cpp_style_line_directive : require", attr))
         goto error;
   }



   snprintf(tmp, sizeof(tmp), "#line %u \"%s\"", root_file ? 2 : 1, basename);
   if (!string_list_append(output, tmp, attr))
      goto error;


   for (i = root_file ? 1 : 0; i < lines->size; i++)
   {
      unsigned push_line = 0;
      const char *line = lines->elems[i].data;


      if (!strncmp("#include ", line, STRLEN_CONST("#include ")))
      {
         char include_file[PATH_MAX_LENGTH];
         char include_path[PATH_MAX_LENGTH];

         include_file[0] = '\0';
         include_path[0] = '\0';


         get_include_file(line, include_file, sizeof(include_file));

         if (string_is_empty(include_file))
         {
            RARCH_ERR("Invalid include statement \"%s\".\n", line);
            goto error;
         }

         fill_pathname_resolve_relative(
               include_path, path, include_file, sizeof(include_path));


         if (!glslang_read_shader_file(include_path, output, 0))
            goto error;



         push_line = 1;
      }
      else if (!strncmp("#endif", line, STRLEN_CONST("#endif")) ||
               !strncmp("#pragma", line, STRLEN_CONST("#pragma")))
      {





         push_line = 2;
         if (!string_list_append(output, line, attr))
            goto error;
      }
      else
         if (!string_list_append(output, line, attr))
            goto error;

      if (push_line != 0)
      {
         snprintf(tmp, sizeof(tmp), "#line %u \"%s\"",
               (unsigned)(i + push_line), basename);
         if (!string_list_append(output, tmp, attr))
            goto error;
      }
   }

   string_list_free(lines);

   return 1;

error:

   if (lines)
      string_list_free(lines);

   return 0;
}
