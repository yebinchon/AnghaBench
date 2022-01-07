
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum display_metric_types { ____Placeholder_display_metric_types } display_metric_types ;




bool switch_ctx_get_metrics(void *data,
   enum display_metric_types type, float *value)
{
   switch (type)
   {
      case 128:
         *value = 236.87;
         return 1;
      default:
         break;
   }

   return 0;
}
