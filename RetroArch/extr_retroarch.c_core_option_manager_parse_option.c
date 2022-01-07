
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct retro_core_option_value {char* value; char* label; } ;
struct retro_core_option_definition {char* key; char* desc; char* info; char* default_value; struct retro_core_option_value* values; } ;
struct core_option {int visible; size_t default_index; size_t index; TYPE_3__* vals; void* key; TYPE_3__* val_labels; void* info; void* desc; } ;
struct TYPE_6__ {int * conf; int * opts; } ;
typedef TYPE_2__ core_option_manager_t ;
typedef int config_file_t ;
struct TYPE_7__ {size_t size; TYPE_1__* elems; } ;
struct TYPE_5__ {char* data; } ;


 scalar_t__ config_get_string (int *,void*,char**) ;
 int free (char*) ;
 void* strdup (char*) ;
 int string_is_empty (char*) ;
 scalar_t__ string_is_equal (char*,char*) ;
 int string_list_append (TYPE_3__*,char*,union string_list_elem_attr) ;
 void* string_list_new () ;

__attribute__((used)) static bool core_option_manager_parse_option(
      core_option_manager_t *opt, size_t idx,
      const struct retro_core_option_definition *option_def,
      config_file_t *config_src)
{
   size_t i;
   union string_list_elem_attr attr;
   size_t num_vals = 0;
   char *config_val = ((void*)0);
   struct core_option *option = (struct core_option*)&opt->opts[idx];
   const struct retro_core_option_value *values = option_def->values;


   option->visible = 1;

   if (!string_is_empty(option_def->key))
      option->key = strdup(option_def->key);

   if (!string_is_empty(option_def->desc))
      option->desc = strdup(option_def->desc);

   if (!string_is_empty(option_def->info))
      option->info = strdup(option_def->info);


   while (1)
   {
      if (!string_is_empty(values[num_vals].value))
         num_vals++;
      else
         break;
   }

   if (num_vals < 1)
      return 0;


   attr.i = 0;
   option->vals = string_list_new();
   option->val_labels = string_list_new();

   if (!option->vals || !option->val_labels)
      return 0;


   option->default_index = 0;
   option->index = 0;


   for (i = 0; i < num_vals; i++)
   {

      string_list_append(option->vals, values[i].value, attr);


      if (!string_is_empty(values[i].label))
         string_list_append(option->val_labels, values[i].label, attr);
      else
         string_list_append(option->val_labels, values[i].value, attr);


      if (!string_is_empty(option_def->default_value))
      {
         if (string_is_equal(option_def->default_value, values[i].value))
         {
            option->default_index = i;
            option->index = i;
         }
      }
   }


   if (config_get_string(config_src ? config_src : opt->conf, option->key, &config_val))
   {
      for (i = 0; i < option->vals->size; i++)
      {
         if (string_is_equal(option->vals->elems[i].data, config_val))
         {
            option->index = i;
            break;
         }
      }

      free(config_val);
   }

   return 1;
}
