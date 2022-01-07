
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int png_uint_16 ;
typedef int png_const_structrp ;
typedef TYPE_1__* png_colorspacerp ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; } ;
typedef TYPE_2__ png_XYZ ;
struct TYPE_6__ {int flags; int rendering_intent; int gamma; TYPE_2__ end_points_XYZ; int end_points_xy; } ;


 int PNG_CHUNK_ERROR ;
 int PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB ;
 int PNG_COLORSPACE_FROM_sRGB ;
 int PNG_COLORSPACE_HAVE_ENDPOINTS ;
 int PNG_COLORSPACE_HAVE_GAMMA ;
 int PNG_COLORSPACE_HAVE_INTENT ;
 int PNG_COLORSPACE_INVALID ;
 int PNG_COLORSPACE_MATCHES_sRGB ;
 int PNG_GAMMA_sRGB_INVERSE ;
 int PNG_sRGB_INTENT_LAST ;
 int png_benign_error (int ,char*) ;
 int png_chunk_report (int ,char*,int ) ;
 int png_colorspace_check_gamma (int ,TYPE_1__*,int ,int) ;
 int png_colorspace_endpoints_match (int *,int *,int) ;
 int png_icc_profile_error (int ,TYPE_1__*,char*,unsigned int,char*) ;
 int sRGB_xy ;

int
png_colorspace_set_sRGB(png_const_structrp png_ptr, png_colorspacerp colorspace,
    int intent)
{
   static const png_XYZ sRGB_XYZ =
   {

                  41239, 21264, 1933,
                  35758, 71517, 11919,
                  18048, 7219, 95053
   };


   if ((colorspace->flags & PNG_COLORSPACE_INVALID) != 0)
      return 0;
   if (intent < 0 || intent >= PNG_sRGB_INTENT_LAST)
      return png_icc_profile_error(png_ptr, colorspace, "sRGB",
          (unsigned)intent, "invalid sRGB rendering intent");

   if ((colorspace->flags & PNG_COLORSPACE_HAVE_INTENT) != 0 &&
       colorspace->rendering_intent != intent)
      return png_icc_profile_error(png_ptr, colorspace, "sRGB",
         (unsigned)intent, "inconsistent rendering intents");

   if ((colorspace->flags & PNG_COLORSPACE_FROM_sRGB) != 0)
   {
      png_benign_error(png_ptr, "duplicate sRGB information ignored");
      return 0;
   }




   if ((colorspace->flags & PNG_COLORSPACE_HAVE_ENDPOINTS) != 0 &&
       !png_colorspace_endpoints_match(&sRGB_xy, &colorspace->end_points_xy,
       100))
      png_chunk_report(png_ptr, "cHRM chunk does not match sRGB",
         PNG_CHUNK_ERROR);




   (void)png_colorspace_check_gamma(png_ptr, colorspace, PNG_GAMMA_sRGB_INVERSE,
       2 );


   colorspace->rendering_intent = (png_uint_16)intent;
   colorspace->flags |= PNG_COLORSPACE_HAVE_INTENT;


   colorspace->end_points_xy = sRGB_xy;
   colorspace->end_points_XYZ = sRGB_XYZ;
   colorspace->flags |=
      (PNG_COLORSPACE_HAVE_ENDPOINTS|PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB);


   colorspace->gamma = PNG_GAMMA_sRGB_INVERSE;
   colorspace->flags |= PNG_COLORSPACE_HAVE_GAMMA;


   colorspace->flags |=
      (PNG_COLORSPACE_MATCHES_sRGB|PNG_COLORSPACE_FROM_sRGB);

   return 1;
}
