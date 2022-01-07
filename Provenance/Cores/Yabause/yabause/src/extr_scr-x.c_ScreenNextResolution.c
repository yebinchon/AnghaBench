
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t index; scalar_t__ bpp; int freq; int height; int width; } ;
typedef TYPE_2__ supportedRes_struct ;
struct TYPE_10__ {size_t current_rate; size_t num_rates; size_t current_size; size_t num_sizes; int dpy; int * rates; TYPE_1__* xrrs; } ;
typedef TYPE_3__ X11ResolutionList ;
struct TYPE_8__ {int height; int width; } ;
typedef TYPE_3__* ResolutionList ;


 int XCloseDisplay (int ) ;
 int * XRRRates (int ,int ,size_t,size_t*) ;
 int free (TYPE_3__*) ;

int ScreenNextResolution(ResolutionList rl, supportedRes_struct * res)
{
   X11ResolutionList * list = rl;

   if (list->current_rate < list->num_rates)
   {
      res->index = list->current_size;
      res->width = list->xrrs[list->current_size].width;
      res->height = list->xrrs[list->current_size].height;
      res->freq = list->rates[list->current_rate];
      res->bpp = 0;
      list->current_rate++;
      return 0;
   }

   list->current_size++;
   if (list->current_size < list->num_sizes)
   {
      list->rates = XRRRates(list->dpy, 0, list->current_size, &list->num_rates);
      list->current_rate = 0;
      return ScreenNextResolution(list, res);
   }

   XCloseDisplay(list->dpy);
   free(list);
   return 1;
}
