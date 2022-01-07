
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qnx_ctx_data_t ;
typedef enum display_metric_types { ____Placeholder_display_metric_types } display_metric_types ;






 int dpi_get_density (int *) ;

__attribute__((used)) static bool gfx_ctx_qnx__get_metrics(void *data,
    enum display_metric_types type, float *value)
{
   static int dpi = -1;
   qnx_ctx_data_t *qnx = (qnx_ctx_data_t*)data;

   switch (type)
   {
      case 129:
         return 0;
      case 130:
         return 0;
      case 131:
         if (dpi == -1)
         {
            dpi = dpi_get_density(qnx);
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


   dpi = 345;
   *value = (float)dpi;
   return 1;
}
