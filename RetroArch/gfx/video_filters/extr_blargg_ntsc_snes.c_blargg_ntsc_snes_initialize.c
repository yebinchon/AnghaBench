
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct softfilter_config {int (* free ) (char*) ;scalar_t__ (* get_string ) (void*,char*,char**,char*) ;} ;
struct filter_data {int burst_toggle; scalar_t__ burst; int * ntsc; } ;
typedef int snes_ntsc_t ;
struct TYPE_6__ {int merge_fields; } ;
typedef TYPE_1__ snes_ntsc_setup_t ;


 scalar_t__ calloc (int,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 TYPE_1__ retroarch_snes_ntsc_composite ;
 int retroarch_snes_ntsc_init (int *,TYPE_1__*) ;
 TYPE_1__ retroarch_snes_ntsc_rgb ;
 TYPE_1__ retroarch_snes_ntsc_svideo ;
 scalar_t__ stub1 (void*,char*,char**,char*) ;
 int stub2 (char*) ;

__attribute__((used)) static void blargg_ntsc_snes_initialize(void *data,
      const struct softfilter_config *config,
      void *userdata)
{
   char *tvtype = ((void*)0);
   snes_ntsc_setup_t setup;
   struct filter_data *filt = (struct filter_data*)data;

   filt->ntsc = (snes_ntsc_t*)calloc(1, sizeof(*filt->ntsc));

   if (config->get_string(userdata, "tvtype", &tvtype, "composite"))
   {
      if (memcmp(tvtype, "composite", 9) == 0)
      {
         setup = retroarch_snes_ntsc_composite;
         setup.merge_fields = 1;
      }
      else if (memcmp(tvtype, "rf", 2) == 0)
      {
         setup = retroarch_snes_ntsc_composite;
         setup.merge_fields = 0;
      }
      else if (memcmp(tvtype, "rgb", 3) == 0)
      {
         setup = retroarch_snes_ntsc_rgb;
         setup.merge_fields = 1;
      }
      else if (memcmp(tvtype, "svideo", 6) == 0)
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
   tvtype = ((void*)0);

   retroarch_snes_ntsc_init(filt->ntsc, &setup);

   filt->burst = 0;
   filt->burst_toggle = (setup.merge_fields ? 0 : 1);
}
