
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwsContext {int dummy; } ;
typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;


 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_UNSPECIFIED ;
 scalar_t__ AVCOL_SPC_BT470BG ;
 scalar_t__ AVCOL_SPC_BT709 ;
 scalar_t__ AVCOL_SPC_UNSPECIFIED ;
 scalar_t__ colorspace ;
 int* sws_getCoefficients (scalar_t__) ;
 int sws_getColorspaceDetails (struct SwsContext*,int**,int*,int**,int*,int*,int*,int*) ;
 int sws_setColorspaceDetails (struct SwsContext*,int const*,int,int const*,int,int,int,int) ;

__attribute__((used)) static void set_colorspace(struct SwsContext *sws,
      unsigned width, unsigned height,
      enum AVColorSpace default_color, int in_range)
{
   const int *coeffs = ((void*)0);

   if (colorspace == AVCOL_SPC_UNSPECIFIED)
   {
      if (default_color != AVCOL_SPC_UNSPECIFIED)
         coeffs = sws_getCoefficients(default_color);
      else if (width >= 1280 || height > 576)
         coeffs = sws_getCoefficients(AVCOL_SPC_BT709);
      else
         coeffs = sws_getCoefficients(AVCOL_SPC_BT470BG);
   }
   else
      coeffs = sws_getCoefficients(colorspace);

   if (coeffs)
   {
      int in_full, out_full, brightness, contrast, saturation;
      const int *inv_table, *table;

      sws_getColorspaceDetails(sws, (int**)&inv_table, &in_full,
            (int**)&table, &out_full,
            &brightness, &contrast, &saturation);

      if (in_range != AVCOL_RANGE_UNSPECIFIED)
         in_full = in_range == AVCOL_RANGE_JPEG;

      inv_table = coeffs;
      sws_setColorspaceDetails(sws, inv_table, in_full,
            table, out_full,
            brightness, contrast, saturation);
   }
}
