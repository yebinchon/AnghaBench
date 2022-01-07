
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct retro_variable {scalar_t__ value; scalar_t__ key; } ;
struct core_option {int dummy; } ;
struct TYPE_5__ {size_t size; struct core_option* opts; int conf_path; void* conf; } ;
typedef TYPE_1__ core_option_manager_t ;
typedef int config_file_t ;


 scalar_t__ calloc (size_t,int) ;
 int config_file_free (int *) ;
 void* config_file_new_alloc () ;
 void* config_file_new_from_path_to_string (char const*) ;
 int core_option_manager_free (TYPE_1__*) ;
 int core_option_manager_parse_variable (TYPE_1__*,size_t,struct retro_variable const*,int *) ;
 int string_is_empty (char const*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static core_option_manager_t *core_option_manager_new_vars(
      const char *conf_path, const char *src_conf_path,
      const struct retro_variable *vars)
{
   const struct retro_variable *var;
   size_t size = 0;
   core_option_manager_t *opt = (core_option_manager_t*)
      calloc(1, sizeof(*opt));
   config_file_t *config_src = ((void*)0);

   if (!opt)
      return ((void*)0);

   if (!string_is_empty(conf_path))
      if (!(opt->conf = config_file_new_from_path_to_string(conf_path)))
         if (!(opt->conf = config_file_new_alloc()))
            goto error;

   strlcpy(opt->conf_path, conf_path, sizeof(opt->conf_path));


   if (!string_is_empty(src_conf_path))
      config_src = config_file_new_from_path_to_string(src_conf_path);

   for (var = vars; var->key && var->value; var++)
      size++;

   if (size == 0)
      goto error;

   opt->opts = (struct core_option*)calloc(size, sizeof(*opt->opts));
   if (!opt->opts)
      goto error;

   opt->size = size;
   size = 0;

   for (var = vars; var->key && var->value; size++, var++)
   {
      if (!core_option_manager_parse_variable(opt, size, var, config_src))
         goto error;
   }

   if (config_src)
      config_file_free(config_src);

   return opt;

error:
   if (config_src)
      config_file_free(config_src);
   core_option_manager_free(opt);
   return ((void*)0);
}
