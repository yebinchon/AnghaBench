
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crt_aspect_ratio_switch (unsigned int,unsigned int) ;
 int ra_set_core_hz ;
 int switch_crt_hz () ;
 int switch_res_crt (unsigned int,unsigned int) ;

__attribute__((used)) static void crt_screen_setup_aspect(unsigned width, unsigned height)
{





   switch_crt_hz();

   if (height == 4)
   {

      if (width < 700)
         width = 320;

      height = 240;

      crt_aspect_ratio_switch(width, height);
   }

   if (height < 200 && height != 144)
   {
      crt_aspect_ratio_switch(width, height);
      height = 200;
   }

   if (height > 200)
      crt_aspect_ratio_switch(width, height);

   if (height == 144 && ra_set_core_hz == 50)
   {
      height = 288;
      crt_aspect_ratio_switch(width, height);
   }

   if (height > 200 && height < 224)
   {
      crt_aspect_ratio_switch(width, height);
      height = 224;
   }

   if (height > 224 && height < 240)
   {
      crt_aspect_ratio_switch(width, height);
      height = 240;
   }

   if (height > 240 && height < 255)
   {
      crt_aspect_ratio_switch(width, height);
      height = 254;
   }

   if (height == 528 && ra_set_core_hz == 60)
   {
      crt_aspect_ratio_switch(width, height);
      height = 480;
   }

   if (height >= 240 && height < 255 && ra_set_core_hz == 55)
   {
      crt_aspect_ratio_switch(width, height);
      height = 254;
   }

   switch_res_crt(width, height);
}
