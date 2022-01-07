
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current_rate; scalar_t__ current_size; int num_rates; int dpy; int rates; int num_sizes; int xrrs; } ;
typedef TYPE_1__ X11ResolutionList ;
typedef TYPE_1__* ResolutionList ;


 int XOpenDisplay (int *) ;
 int XRRRates (int ,int ,int ,int *) ;
 int XRRSizes (int ,int ,int *) ;
 TYPE_1__* malloc (int) ;

ResolutionList ScreenGetResolutions()
{
   X11ResolutionList * list;

   list = malloc(sizeof(X11ResolutionList));

   list->dpy = XOpenDisplay(((void*)0));
   list->xrrs = XRRSizes(list->dpy, 0, &list->num_sizes);
   list->rates = XRRRates(list->dpy, 0, 0, &list->num_rates);
   list->current_size = 0;
   list->current_rate = 0;

   return list;
}
