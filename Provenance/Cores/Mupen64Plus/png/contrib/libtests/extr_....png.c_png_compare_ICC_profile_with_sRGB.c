
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uLong ;
typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_const_structrp ;
typedef int * png_const_bytep ;
struct TYPE_6__ {scalar_t__* md5; scalar_t__ have_md5; int is_broken; scalar_t__ adler; scalar_t__ crc; scalar_t__ intent; scalar_t__ length; } ;
struct TYPE_5__ {int options; } ;


 int PNG_CHUNK_ERROR ;
 int PNG_CHUNK_WARNING ;
 int PNG_OPTION_ON ;
 int PNG_SKIP_sRGB_CHECK_PROFILE ;
 scalar_t__ adler32 (scalar_t__,int *,scalar_t__) ;
 scalar_t__ crc32 (scalar_t__,int *,scalar_t__) ;
 int png_chunk_report (TYPE_1__*,char*,int ) ;
 scalar_t__ png_get_uint_32 (int *) ;
 TYPE_2__* png_sRGB_checks ;

__attribute__((used)) static int
png_compare_ICC_profile_with_sRGB(png_const_structrp png_ptr,
    png_const_bytep profile, uLong adler)
{
   png_uint_32 length = 0;
   png_uint_32 intent = 0x10000;



   unsigned int i;
   for (i=0; i < (sizeof png_sRGB_checks) / (sizeof png_sRGB_checks[0]); ++i)
   {
      if (png_get_uint_32(profile+84) == png_sRGB_checks[i].md5[0] &&
         png_get_uint_32(profile+88) == png_sRGB_checks[i].md5[1] &&
         png_get_uint_32(profile+92) == png_sRGB_checks[i].md5[2] &&
         png_get_uint_32(profile+96) == png_sRGB_checks[i].md5[3])
      {





            if (png_sRGB_checks[i].have_md5 != 0)
               return 1+png_sRGB_checks[i].is_broken;



         if (length == 0)
         {
            length = png_get_uint_32(profile);
            intent = png_get_uint_32(profile+64);
         }


         if (length == (png_uint_32) png_sRGB_checks[i].length &&
            intent == (png_uint_32) png_sRGB_checks[i].intent)
         {

            if (adler == 0)
            {
               adler = adler32(0, ((void*)0), 0);
               adler = adler32(adler, profile, length);
            }

            if (adler == png_sRGB_checks[i].adler)
            {
               {
                  if (png_sRGB_checks[i].is_broken != 0)
                  {





                     png_chunk_report(png_ptr, "known incorrect sRGB profile",
                         PNG_CHUNK_ERROR);
                  }





                  else if (png_sRGB_checks[i].have_md5 == 0)
                  {
                     png_chunk_report(png_ptr,
                         "out-of-date sRGB profile with no signature",
                         PNG_CHUNK_WARNING);
                  }

                  return 1+png_sRGB_checks[i].is_broken;
               }
            }
         }
      }
   }

   return 0;
}
