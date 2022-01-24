#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct softfilter_work_packet {int dummy; } ;
struct filter_thread_data {int done; int /*<<< orphan*/  thread; int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; int /*<<< orphan*/  userdata; } ;
struct config_file_userdata {char** prefix; int /*<<< orphan*/  conf; } ;
typedef  int /*<<< orphan*/  softfilter_simd_mask_t ;
struct TYPE_5__ {scalar_t__ num_plugs; int pix_fmt; int out_pix_fmt; unsigned int max_width; unsigned int max_height; unsigned int threads; struct filter_thread_data* thread_data; int /*<<< orphan*/  impl_data; struct softfilter_work_packet* packets; TYPE_2__* impl; int /*<<< orphan*/  conf; } ;
typedef  TYPE_1__ rarch_softfilter_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  key ;
typedef  enum retro_pixel_format { ____Placeholder_retro_pixel_format } retro_pixel_format ;
struct TYPE_6__ {char* short_ident; unsigned int (* query_input_formats ) () ;unsigned int (* query_output_formats ) (unsigned int) ;unsigned int (* query_num_threads ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,struct config_file_userdata*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 unsigned int RARCH_SOFTFILTER_THREADS_AUTO ; 
#define  RETRO_PIXEL_FORMAT_RGB565 129 
#define  RETRO_PIXEL_FORMAT_XRGB8888 128 
 unsigned int SOFTFILTER_FMT_RGB565 ; 
 unsigned int SOFTFILTER_FMT_XRGB8888 ; 
 scalar_t__ FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  filter_thread_loop ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  softfilter_config ; 
 TYPE_2__* FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct filter_thread_data*) ; 
 unsigned int FUNC10 () ; 
 unsigned int FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,struct config_file_userdata*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC14(rarch_softfilter_t *filt,
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

   FUNC7(key, sizeof(key), "filter");

   if (!FUNC3(filt->conf, key, name, sizeof(name)))
   {
      FUNC0("Could not find 'filter' array in config.\n");
      return false;
   }

   if (filt->num_plugs == 0)
   {
      FUNC0("No filter plugs found. Exiting...\n");
      return false;
   }

   filt->impl = FUNC8(filt, name);
   if (!filt->impl)
   {
      FUNC0("Could not find implementation.\n");
      return false;
   }

   userdata.conf = filt->conf;
   /* Index-specific configs take priority over ident-specific. */
   userdata.prefix[0] = key;
   userdata.prefix[1] = filt->impl->short_ident;

   /* Simple assumptions. */
   filt->pix_fmt = in_pixel_format;
   input_fmts = filt->impl->query_input_formats();

   switch (in_pixel_format)
   {
      case RETRO_PIXEL_FORMAT_XRGB8888:
         input_fmt = SOFTFILTER_FMT_XRGB8888;
         break;
      case RETRO_PIXEL_FORMAT_RGB565:
         input_fmt = SOFTFILTER_FMT_RGB565;
         break;
      default:
         return false;
   }

   if (!(input_fmt & input_fmts))
   {
      FUNC0("Softfilter does not support input format.\n");
      return false;
   }

   output_fmts = filt->impl->query_output_formats(input_fmt);
   /* If we have a match of input/output formats, use that. */
   if (output_fmts & input_fmt)
      filt->out_pix_fmt = in_pixel_format;
   else if (output_fmts & SOFTFILTER_FMT_XRGB8888)
      filt->out_pix_fmt = RETRO_PIXEL_FORMAT_XRGB8888;
   else if (output_fmts & SOFTFILTER_FMT_RGB565)
      filt->out_pix_fmt = RETRO_PIXEL_FORMAT_RGB565;
   else
   {
      FUNC0("Did not find suitable output format for softfilter.\n");
      return false;
   }

   filt->max_width = max_width;
   filt->max_height = max_height;

   filt->impl_data = filt->impl->create(
         &softfilter_config, input_fmt, input_fmt, max_width, max_height,
         threads != RARCH_SOFTFILTER_THREADS_AUTO ? threads :
         FUNC4(), cpu_features,
         &userdata);
   if (!filt->impl_data)
   {
      FUNC0("Failed to create softfilter state.\n");
      return false;
   }

   threads = filt->impl->query_num_threads(filt->impl_data);
   if (!threads)
   {
      FUNC0("Invalid number of threads.\n");
      return false;
   }

   filt->threads = threads;
   FUNC1("Using %u threads for softfilter.\n", threads);

   filt->packets = (struct softfilter_work_packet*)
      FUNC2(threads, sizeof(*filt->packets));
   if (!filt->packets)
   {
      FUNC0("Failed to allocate softfilter packets.\n");
      return false;
   }

#ifdef HAVE_THREADS
   filt->thread_data = (struct filter_thread_data*)
      calloc(threads, sizeof(*filt->thread_data));
   if (!filt->thread_data)
      return false;

   for (i = 0; i < threads; i++)
   {
      filt->thread_data[i].userdata = filt->impl_data;
      filt->thread_data[i].done = true;

      filt->thread_data[i].lock = slock_new();
      if (!filt->thread_data[i].lock)
         return false;
      filt->thread_data[i].cond = scond_new();
      if (!filt->thread_data[i].cond)
         return false;
      filt->thread_data[i].thread = sthread_create(
            filter_thread_loop, &filt->thread_data[i]);
      if (!filt->thread_data[i].thread)
         return false;
   }
#endif

   return true;
}