
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum display_metric_types { ____Placeholder_display_metric_types } display_metric_types ;
typedef int density ;






 int PROP_VALUE_MAX ;
 int atoi (char*) ;
 int dpi_get_density (char*,int) ;
 int string_is_empty (char*) ;

__attribute__((used)) static bool android_gfx_ctx_get_metrics(void *data,
 enum display_metric_types type, float *value)
{
   static int dpi = -1;

   switch (type)
   {
      case 129:
         return 0;
      case 130:
         return 0;
      case 131:
         if (dpi == -1)
         {
            char density[PROP_VALUE_MAX];
            density[0] = '\0';

            dpi_get_density(density, sizeof(density));
            if (string_is_empty(density))
               goto dpi_fallback;
            dpi = atoi(density);

            if (dpi <= 0)
               goto dpi_fallback;
         }
         *value = (float)dpi;
         break;
      case 128:
      default:
         *value = 0;
         return 0;
   }

   return 1;

dpi_fallback:


   dpi = 90;
   *value = (float)dpi;
   return 1;
}
