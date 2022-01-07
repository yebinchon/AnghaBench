
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct softfilter_work_packet {int dummy; } ;
struct filter_thread_data {int done; int thread; int cond; int lock; int userdata; } ;
struct config_file_userdata {char** prefix; int conf; } ;
typedef int softfilter_simd_mask_t ;
struct TYPE_5__ {scalar_t__ num_plugs; int pix_fmt; int out_pix_fmt; unsigned int max_width; unsigned int max_height; unsigned int threads; struct filter_thread_data* thread_data; int impl_data; struct softfilter_work_packet* packets; TYPE_2__* impl; int conf; } ;
typedef TYPE_1__ rarch_softfilter_t ;
typedef int name ;
typedef int key ;
typedef enum retro_pixel_format { ____Placeholder_retro_pixel_format } retro_pixel_format ;
struct TYPE_6__ {char* short_ident; unsigned int (* query_input_formats ) () ;unsigned int (* query_output_formats ) (unsigned int) ;unsigned int (* query_num_threads ) (int ) ;int (* create ) (int *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ,struct config_file_userdata*) ;} ;


 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,unsigned int) ;
 unsigned int RARCH_SOFTFILTER_THREADS_AUTO ;


 unsigned int SOFTFILTER_FMT_RGB565 ;
 unsigned int SOFTFILTER_FMT_XRGB8888 ;
 scalar_t__ calloc (unsigned int,int) ;
 int config_get_array (int ,char*,char*,int) ;
 unsigned int cpu_features_get_core_amount () ;
 int filter_thread_loop ;
 int scond_new () ;
 int slock_new () ;
 int snprintf (char*,int,char*) ;
 int softfilter_config ;
 TYPE_2__* softfilter_find_implementation (TYPE_1__*,char*) ;
 int sthread_create (int ,struct filter_thread_data*) ;
 unsigned int stub1 () ;
 unsigned int stub2 (unsigned int) ;
 int stub3 (int *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ,struct config_file_userdata*) ;
 unsigned int stub4 (int ) ;

__attribute__((used)) static bool create_softfilter_graph(rarch_softfilter_t *filt,
      enum retro_pixel_format in_pixel_format,
      unsigned max_width, unsigned max_height,
      softfilter_simd_mask_t cpu_features,
      unsigned threads)
{
   unsigned input_fmts, input_fmt, output_fmts, i = 0;
   struct config_file_userdata userdata;
   char key[64], name[64];

   (void)i;

   key[0] = name[0] = '\0';

   snprintf(key, sizeof(key), "filter");

   if (!config_get_array(filt->conf, key, name, sizeof(name)))
   {
      RARCH_ERR("Could not find 'filter' array in config.\n");
      return 0;
   }

   if (filt->num_plugs == 0)
   {
      RARCH_ERR("No filter plugs found. Exiting...\n");
      return 0;
   }

   filt->impl = softfilter_find_implementation(filt, name);
   if (!filt->impl)
   {
      RARCH_ERR("Could not find implementation.\n");
      return 0;
   }

   userdata.conf = filt->conf;

   userdata.prefix[0] = key;
   userdata.prefix[1] = filt->impl->short_ident;


   filt->pix_fmt = in_pixel_format;
   input_fmts = filt->impl->query_input_formats();

   switch (in_pixel_format)
   {
      case 128:
         input_fmt = SOFTFILTER_FMT_XRGB8888;
         break;
      case 129:
         input_fmt = SOFTFILTER_FMT_RGB565;
         break;
      default:
         return 0;
   }

   if (!(input_fmt & input_fmts))
   {
      RARCH_ERR("Softfilter does not support input format.\n");
      return 0;
   }

   output_fmts = filt->impl->query_output_formats(input_fmt);

   if (output_fmts & input_fmt)
      filt->out_pix_fmt = in_pixel_format;
   else if (output_fmts & SOFTFILTER_FMT_XRGB8888)
      filt->out_pix_fmt = 128;
   else if (output_fmts & SOFTFILTER_FMT_RGB565)
      filt->out_pix_fmt = 129;
   else
   {
      RARCH_ERR("Did not find suitable output format for softfilter.\n");
      return 0;
   }

   filt->max_width = max_width;
   filt->max_height = max_height;

   filt->impl_data = filt->impl->create(
         &softfilter_config, input_fmt, input_fmt, max_width, max_height,
         threads != RARCH_SOFTFILTER_THREADS_AUTO ? threads :
         cpu_features_get_core_amount(), cpu_features,
         &userdata);
   if (!filt->impl_data)
   {
      RARCH_ERR("Failed to create softfilter state.\n");
      return 0;
   }

   threads = filt->impl->query_num_threads(filt->impl_data);
   if (!threads)
   {
      RARCH_ERR("Invalid number of threads.\n");
      return 0;
   }

   filt->threads = threads;
   RARCH_LOG("Using %u threads for softfilter.\n", threads);

   filt->packets = (struct softfilter_work_packet*)
      calloc(threads, sizeof(*filt->packets));
   if (!filt->packets)
   {
      RARCH_ERR("Failed to allocate softfilter packets.\n");
      return 0;
   }
   return 1;
}
