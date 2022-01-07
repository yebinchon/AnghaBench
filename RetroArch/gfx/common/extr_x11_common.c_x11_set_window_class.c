
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* res_name; char* res_class; } ;
typedef TYPE_1__ XClassHint ;
typedef int Window ;
typedef int Display ;


 int XSetClassHint (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void x11_set_window_class(Display *dpy, Window win)
{
   XClassHint hint;

   hint.res_name = (char*)"retroarch";
   hint.res_class = (char*)"retroarch";
   XSetClassHint(dpy, win, &hint);
}
