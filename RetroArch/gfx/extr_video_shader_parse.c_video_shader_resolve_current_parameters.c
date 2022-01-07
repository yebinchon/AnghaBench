
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_shader_parameter {int current; } ;
struct video_shader {int num_parameters; int parameters; } ;
typedef int config_file_t ;


 int RARCH_WARN (char*,char const*) ;
 int config_get_array (int *,char*,char*,size_t) ;
 int config_get_float (int *,char const*,int *) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ video_shader_parse_find_parameter (int ,int ,char const*) ;

bool video_shader_resolve_current_parameters(config_file_t *conf,
      struct video_shader *shader)
{
   size_t param_size = 4096 * sizeof(char);
   const char *id = ((void*)0);
   char *parameters = ((void*)0);
   char *save = ((void*)0);

   if (!conf)
      return 0;

   parameters = (char*)malloc(param_size);

   if (!parameters)
      return 0;

   parameters[0] = '\0';


   if (!config_get_array(conf, "parameters",
            parameters, param_size))
   {
      free(parameters);
      return 1;
   }

   for (id = strtok_r(parameters, ";", &save); id;
         id = strtok_r(((void*)0), ";", &save))
   {
      struct video_shader_parameter *parameter =
         (struct video_shader_parameter*)
         video_shader_parse_find_parameter(
               shader->parameters, shader->num_parameters, id);

      if (!parameter)
      {
         RARCH_WARN("[CGP/GLSLP]: Parameter %s is set in the preset,"
               " but no shader uses this parameter, ignoring.\n", id);
         continue;
      }

      if (!config_get_float(conf, id, &parameter->current))
         RARCH_WARN("[CGP/GLSLP]: Parameter %s is not set in preset.\n", id);
   }

   free(parameters);
   return 1;
}
