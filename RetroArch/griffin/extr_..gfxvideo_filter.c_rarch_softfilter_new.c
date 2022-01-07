
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct string_list {int dummy; } ;
typedef int softfilter_simd_mask_t ;
struct TYPE_6__ {int conf; } ;
typedef TYPE_1__ rarch_softfilter_t ;
typedef int ext_name ;
typedef enum retro_pixel_format { ____Placeholder_retro_pixel_format } retro_pixel_format ;
typedef int basedir ;


 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,...) ;
 int append_softfilter_plugs (TYPE_1__*,struct string_list*) ;
 scalar_t__ calloc (int,int) ;
 int config_file_new_from_path_to_string (char const*) ;
 int cpu_features_get () ;
 int create_softfilter_graph (TYPE_1__*,int,unsigned int,unsigned int,int ,unsigned int) ;
 struct string_list* dir_list_new (char*,char*,int,int,int,int) ;
 int fill_pathname_basedir (char*,char const*,int) ;
 int frontend_driver_get_core_extension (char*,int) ;
 int rarch_softfilter_free (TYPE_1__*) ;
 int string_list_free (struct string_list*) ;

rarch_softfilter_t *rarch_softfilter_new(const char *filter_config,
      unsigned threads,
      enum retro_pixel_format in_pixel_format,
      unsigned max_width, unsigned max_height)
{
   softfilter_simd_mask_t cpu_features = (softfilter_simd_mask_t)cpu_features_get();
   char basedir[PATH_MAX_LENGTH];



   struct string_list *plugs = ((void*)0);
   rarch_softfilter_t *filt = ((void*)0);

   (void)basedir;

   filt = (rarch_softfilter_t*)calloc(1, sizeof(*filt));
   if (!filt)
      return ((void*)0);

   if (!(filt->conf = config_file_new_from_path_to_string(filter_config)))
   {
      RARCH_ERR("[SoftFilter]: Did not find config: %s\n", filter_config);
      goto error;
   }
   if (!append_softfilter_plugs(filt, plugs))
   {
      RARCH_ERR("[SoftFitler]: Failed to append softfilter plugins...\n");
      goto error;
   }

   if (plugs)
      string_list_free(plugs);
   plugs = ((void*)0);

   if (!create_softfilter_graph(filt, in_pixel_format,
            max_width, max_height, cpu_features, threads))
   {
      RARCH_ERR("[SoftFitler]: Failed to create softfilter graph...\n");
      goto error;
   }

   return filt;

error:
   if (plugs)
      string_list_free(plugs);
   plugs = ((void*)0);
   rarch_softfilter_free(filt);
   return ((void*)0);
}
