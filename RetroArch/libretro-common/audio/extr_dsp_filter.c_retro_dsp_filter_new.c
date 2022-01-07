
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_6__ {int * conf; } ;
typedef TYPE_1__ retro_dsp_filter_t ;
typedef int config_file_t ;


 int append_plugs (TYPE_1__*,struct string_list*) ;
 scalar_t__ calloc (int,int) ;
 int * config_file_new_from_path_to_string (char const*) ;
 int create_filter_graph (TYPE_1__*,float) ;
 int retro_dsp_filter_free (TYPE_1__*) ;
 int string_list_free (struct string_list*) ;

retro_dsp_filter_t *retro_dsp_filter_new(
      const char *filter_config,
      void *string_data,
      float sample_rate)
{
   config_file_t *conf = ((void*)0);
   struct string_list *plugs = ((void*)0);
   retro_dsp_filter_t *dsp = (retro_dsp_filter_t*)calloc(1, sizeof(*dsp));

   if (!dsp)
      return ((void*)0);

   if (!(conf = config_file_new_from_path_to_string(filter_config)))
      goto error;

   dsp->conf = conf;

   if (string_data)
      plugs = (struct string_list*)string_data;






   if (plugs)
      string_list_free(plugs);
   plugs = ((void*)0);

   if (!create_filter_graph(dsp, sample_rate))
      goto error;

   return dsp;

error:
   if (plugs)
      string_list_free(plugs);
   retro_dsp_filter_free(dsp);
   return ((void*)0);
}
