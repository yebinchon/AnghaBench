#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  softfilter_simd_mask_t ;
struct TYPE_6__ {int /*<<< orphan*/  conf; } ;
typedef  TYPE_1__ rarch_softfilter_t ;
typedef  int /*<<< orphan*/  ext_name ;
typedef  enum retro_pixel_format { ____Placeholder_retro_pixel_format } retro_pixel_format ;
typedef  int /*<<< orphan*/  basedir ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct string_list*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct string_list* FUNC6 (char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*) ; 

rarch_softfilter_t *FUNC11(const char *filter_config,
      unsigned threads,
      enum retro_pixel_format in_pixel_format,
      unsigned max_width, unsigned max_height)
{
   softfilter_simd_mask_t cpu_features = (softfilter_simd_mask_t)FUNC4();
   char basedir[PATH_MAX_LENGTH];
#ifdef HAVE_DYLIB
   char ext_name[PATH_MAX_LENGTH];
#endif
   struct string_list *plugs     = NULL;
   rarch_softfilter_t *filt      = NULL;

   (void)basedir;

   filt = (rarch_softfilter_t*)FUNC2(1, sizeof(*filt));
   if (!filt)
      return NULL;

   if (!(filt->conf = FUNC3(filter_config)))
   {
      FUNC0("[SoftFilter]: Did not find config: %s\n", filter_config);
      goto error;
   }

#if defined(HAVE_DYLIB)
   fill_pathname_basedir(basedir, filter_config, sizeof(basedir));

   if (!frontend_driver_get_core_extension(ext_name, sizeof(ext_name)))
         goto error;

   plugs = dir_list_new(basedir, ext_name, false, false, false, false);

   if (!plugs)
   {
      RARCH_ERR("[SoftFilter]: Could not build up string list...\n");
      goto error;
   }
#endif
   if (!FUNC1(filt, plugs))
   {
      FUNC0("[SoftFitler]: Failed to append softfilter plugins...\n");
      goto error;
   }

   if (plugs)
      FUNC10(plugs);
   plugs = NULL;

   if (!FUNC5(filt, in_pixel_format,
            max_width, max_height, cpu_features, threads))
   {
      FUNC0("[SoftFitler]: Failed to create softfilter graph...\n");
      goto error;
   }

   return filt;

error:
   if (plugs)
      FUNC10(plugs);
   plugs = NULL;
   FUNC9(filt);
   return NULL;
}