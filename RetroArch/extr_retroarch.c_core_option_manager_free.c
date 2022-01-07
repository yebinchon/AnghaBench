
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; struct TYPE_4__* opts; scalar_t__ conf; int * vals; struct TYPE_4__* key; struct TYPE_4__* info; struct TYPE_4__* desc; int * val_labels; } ;
typedef TYPE_1__ core_option_manager_t ;


 int config_file_free (scalar_t__) ;
 int free (TYPE_1__*) ;
 int string_list_free (int *) ;

__attribute__((used)) static void core_option_manager_free(core_option_manager_t *opt)
{
   size_t i;

   if (!opt)
      return;

   for (i = 0; i < opt->size; i++)
   {
      if (opt->opts[i].desc)
         free(opt->opts[i].desc);
      if (opt->opts[i].info)
         free(opt->opts[i].info);
      if (opt->opts[i].key)
         free(opt->opts[i].key);

      if (opt->opts[i].vals)
         string_list_free(opt->opts[i].vals);
      if (opt->opts[i].val_labels)
         string_list_free(opt->opts[i].val_labels);

      opt->opts[i].desc = ((void*)0);
      opt->opts[i].info = ((void*)0);
      opt->opts[i].key = ((void*)0);
      opt->opts[i].vals = ((void*)0);
   }

   if (opt->conf)
      config_file_free(opt->conf);
   free(opt->opts);
   free(opt);
}
