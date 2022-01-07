
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct video_shader_parameter {unsigned int pass; char* id; char* desc; float minimum; float maximum; float step; int initial; int current; } ;
struct video_shader {scalar_t__ num_parameters; unsigned int passes; struct video_shader_parameter* parameters; TYPE_2__* pass; } ;
struct string_list {size_t size; TYPE_3__* elems; } ;
typedef scalar_t__ int64_t ;
typedef int config_file_t ;
struct TYPE_6__ {char* data; } ;
struct TYPE_4__ {char* path; } ;
struct TYPE_5__ {TYPE_1__ source; } ;


 scalar_t__ ARRAY_SIZE (struct video_shader_parameter*) ;
 int RARCH_LOG (char*,char*,char*,int ,float,float,float,unsigned int) ;
 int STRLEN_CONST (char*) ;
 int filestream_read_file (char const*,void**,scalar_t__*) ;
 int free (void*) ;
 int path_get_extension (char const*) ;
 int path_is_valid (char const*) ;
 scalar_t__ slang_preprocess_parse_parameters (char const*,struct video_shader*) ;
 int sscanf (char const*,char*,char*,char*,int *,float*,float*,float*) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (int ,char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;
 int video_shader_resolve_current_parameters (int *,struct video_shader*) ;

bool video_shader_resolve_parameters(config_file_t *conf,
      struct video_shader *shader)
{
   unsigned i;
   struct video_shader_parameter *param = &shader->parameters[0];

   shader->num_parameters = 0;



   for (i = 0; i < shader->passes; i++)
   {
      const char *path = shader->pass[i].source.path;
      uint8_t *buf = ((void*)0);
      int64_t buf_len = 0;
      struct string_list *lines = ((void*)0);
      size_t line_index = 0;

      if (string_is_empty(path))
         continue;

      if (!path_is_valid(path))
         continue;
      if (!filestream_read_file(path, (void**)&buf, &buf_len))
         continue;


      if (buf_len > 0)
         lines = string_split((const char*)buf, "\n");


      if ((void*)buf)
         free((void*)buf);

      if (!lines)
         continue;


      param->pass = i;

      while ((shader->num_parameters < ARRAY_SIZE(shader->parameters)) &&
             (line_index < lines->size))
      {
         int ret;
         const char *line = lines->elems[line_index].data;
         line_index++;


         if (strncmp("#pragma parameter", line,
                  STRLEN_CONST("#pragma parameter")))
            continue;


         ret = sscanf(line, "#pragma parameter %63s \"%63[^\"]\" %f %f %f %f",
               param->id, param->desc, &param->initial,
               &param->minimum, &param->maximum, &param->step);

         if (ret < 5)
            continue;

         param->id[63] = '\0';
         param->desc[63] = '\0';

         if (ret == 5)
            param->step = 0.1f * (param->maximum - param->minimum);

         param->pass = i;

         RARCH_LOG("Found #pragma parameter %s (%s) %f %f %f %f in pass %d\n",
               param->desc, param->id, param->initial,
               param->minimum, param->maximum, param->step, param->pass);
         param->current = param->initial;

         shader->num_parameters++;
         param++;
      }

      string_list_free(lines);
   }

   return video_shader_resolve_current_parameters(conf, shader);
}
