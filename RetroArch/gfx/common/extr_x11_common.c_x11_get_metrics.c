
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum display_metric_types { ____Placeholder_display_metric_types } display_metric_types ;
typedef int Display ;
 int DisplayHeight (int *,unsigned int) ;
 int DisplayHeightMM (int *,unsigned int) ;
 int DisplayWidth (int *,unsigned int) ;
 int DisplayWidthMM (int *,unsigned int) ;
 int XCloseDisplay (int *) ;
 scalar_t__ XOpenDisplay (int *) ;

bool x11_get_metrics(void *data,
      enum display_metric_types type, float *value)
{
   unsigned screen_no = 0;
   Display *dpy = (Display*)XOpenDisplay(((void*)0));
   int pixels_x = DisplayWidth(dpy, screen_no);
   int pixels_y = DisplayHeight(dpy, screen_no);
   int physical_width = DisplayWidthMM(dpy, screen_no);
   int physical_height = DisplayHeightMM(dpy, screen_no);

   (void)pixels_y;

   XCloseDisplay(dpy);

   switch (type)
   {
      case 128:
         *value = (float)pixels_x;
         break;
      case 129:
         *value = (float)pixels_y;
         break;
      case 131:
         *value = (float)physical_width;
         break;
      case 132:
         *value = (float)physical_height;
         break;
      case 133:
         *value = ((((float)pixels_x) * 25.4) / ((float)physical_width));
         break;
      case 130:
      default:
         *value = 0;
         return 0;
   }

   return 1;
}
