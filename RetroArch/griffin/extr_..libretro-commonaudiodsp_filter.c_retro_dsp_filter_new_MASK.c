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
struct TYPE_6__ {int /*<<< orphan*/ * conf; } ;
typedef  TYPE_1__ retro_dsp_filter_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct string_list*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,float) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 

retro_dsp_filter_t *FUNC6(
      const char *filter_config,
      void *string_data,
      float sample_rate)
{
   config_file_t *conf           = NULL;
   struct string_list *plugs     = NULL;
   retro_dsp_filter_t *dsp       = (retro_dsp_filter_t*)FUNC1(1, sizeof(*dsp));

   if (!dsp)
      return NULL;

   if (!(conf = FUNC2(filter_config)))
      goto error;

   dsp->conf = conf;

   if (string_data)
      plugs = (struct string_list*)string_data;

#if defined(HAVE_DYLIB) || defined(HAVE_FILTERS_BUILTIN)
   if (!append_plugs(dsp, plugs))
      goto error;
#endif

   if (plugs)
      FUNC5(plugs);
   plugs = NULL;

   if (!FUNC3(dsp, sample_rate))
      goto error;

   return dsp;

error:
   if (plugs)
      FUNC5(plugs);
   FUNC4(dsp);
   return NULL;
}