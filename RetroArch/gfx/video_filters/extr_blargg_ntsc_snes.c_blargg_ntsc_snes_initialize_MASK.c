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
struct softfilter_config {int /*<<< orphan*/  (* free ) (char*) ;scalar_t__ (* get_string ) (void*,char*,char**,char*) ;} ;
struct filter_data {int burst_toggle; scalar_t__ burst; int /*<<< orphan*/ * ntsc; } ;
typedef  int /*<<< orphan*/  snes_ntsc_t ;
struct TYPE_6__ {int merge_fields; } ;
typedef  TYPE_1__ snes_ntsc_setup_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 TYPE_1__ retroarch_snes_ntsc_composite ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ retroarch_snes_ntsc_rgb ; 
 TYPE_1__ retroarch_snes_ntsc_svideo ; 
 scalar_t__ FUNC3 (void*,char*,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void *data,
      const struct softfilter_config *config,
      void *userdata)
{
   char *tvtype = NULL;
   snes_ntsc_setup_t setup;
   struct filter_data *filt = (struct filter_data*)data;

   filt->ntsc = (snes_ntsc_t*)FUNC0(1, sizeof(*filt->ntsc));

   if (config->get_string(userdata, "tvtype", &tvtype, "composite"))
   {
      if (FUNC1(tvtype, "composite", 9) == 0)
      {
         setup = retroarch_snes_ntsc_composite;
         setup.merge_fields = 1;
      }
      else if (FUNC1(tvtype, "rf", 2) == 0)
      {
         setup = retroarch_snes_ntsc_composite;
         setup.merge_fields = 0;
      }
      else if (FUNC1(tvtype, "rgb", 3) == 0)
      {
         setup = retroarch_snes_ntsc_rgb;
         setup.merge_fields = 1;
      }
      else if (FUNC1(tvtype, "svideo", 6) == 0)
      {
         setup = retroarch_snes_ntsc_svideo;
         setup.merge_fields = 1;
      }
   }
   else
   {
      setup = retroarch_snes_ntsc_composite;
      setup.merge_fields = 1;
   }

   config->free(tvtype);
   tvtype = NULL;

   FUNC2(filt->ntsc, &setup);

   filt->burst = 0;
   filt->burst_toggle = (setup.merge_fields ? 0 : 1);
}