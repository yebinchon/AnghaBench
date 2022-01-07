
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct retro_dsp_instance {int impl_data; TYPE_2__* impl; } ;
struct dspfilter_info {float input_rate; } ;
struct config_file_userdata {char** prefix; int conf; } ;
struct TYPE_5__ {unsigned int num_instances; struct retro_dsp_instance* instances; int conf; } ;
typedef TYPE_1__ retro_dsp_filter_t ;
typedef int name ;
typedef int key ;
struct TYPE_6__ {char* short_ident; int (* init ) (struct dspfilter_info*,int *,struct config_file_userdata*) ;} ;


 scalar_t__ calloc (unsigned int,int) ;
 int config_get_array (int ,char*,char*,int) ;
 int config_get_uint (int ,char*,unsigned int*) ;
 int dspfilter_config ;
 TYPE_2__* find_implementation (TYPE_1__*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int stub1 (struct dspfilter_info*,int *,struct config_file_userdata*) ;

__attribute__((used)) static bool create_filter_graph(retro_dsp_filter_t *dsp, float sample_rate)
{
   unsigned i;
   struct retro_dsp_instance *instances = ((void*)0);
   unsigned filters = 0;

   if (!config_get_uint(dsp->conf, "filters", &filters))
      return 0;

   instances = (struct retro_dsp_instance*)calloc(filters, sizeof(*instances));
   if (!instances)
      return 0;

   dsp->instances = instances;
   dsp->num_instances = filters;

   for (i = 0; i < filters; i++)
   {
      struct config_file_userdata userdata;
      struct dspfilter_info info;
      char key[64];
      char name[64];

      key[0] = name[0] = '\0';

      info.input_rate = sample_rate;

      snprintf(key, sizeof(key), "filter%u", i);

      if (!config_get_array(dsp->conf, key, name, sizeof(name)))
         return 0;

      dsp->instances[i].impl = find_implementation(dsp, name);
      if (!dsp->instances[i].impl)
         return 0;

      userdata.conf = dsp->conf;

      userdata.prefix[0] = key;
      userdata.prefix[1] = dsp->instances[i].impl->short_ident;

      dsp->instances[i].impl_data = dsp->instances[i].impl->init(&info,
            &dspfilter_config, &userdata);
      if (!dsp->instances[i].impl_data)
         return 0;
   }

   return 1;
}
