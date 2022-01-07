
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Imlib_Image ;


 int fprintf (int ,char*,...) ;
 int free (int*) ;
 int imlib_context_set_image (int ) ;
 int imlib_free_image () ;
 int* imlib_image_get_data_for_reading_only () ;
 unsigned int imlib_image_get_width () ;
 int imlib_load_image (char const*) ;
 scalar_t__ memcmp (int const*,int*,unsigned int) ;
 int rpng_load_image_argb (char const*,int**,unsigned int*,unsigned int*) ;
 int rpng_save_image_argb (char*,int const*,int,int,int) ;
 int stderr ;

__attribute__((used)) static int test_rpng(const char *in_path)
{




   const uint32_t test_data[] = {
      0xff000000 | 0x50, 0xff000000 | 0x80,
      0xff000000 | 0x40, 0xff000000 | 0x88,
      0xff000000 | 0x50, 0xff000000 | 0x80,
      0xff000000 | 0x40, 0xff000000 | 0x88,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
   };
   uint32_t *data = ((void*)0);
   unsigned width = 0;
   unsigned height = 0;

   if (!rpng_save_image_argb("/tmp/test.png", test_data, 4, 4, 16))
      return 1;

   if (!rpng_load_image_argb(in_path, &data, &width, &height))
      return 2;

   fprintf(stderr, "Path: %s.\n", in_path);
   fprintf(stderr, "Got image: %u x %u.\n", width, height);
   free(data);

   return 0;
}
