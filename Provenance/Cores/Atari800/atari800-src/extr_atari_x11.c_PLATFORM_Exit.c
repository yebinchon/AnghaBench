
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int Log_flushlog () ;
 int MONITOR_Run () ;
 int True ;
 int XCloseDisplay (int *) ;
 int XDestroyImage (int *) ;
 int XDestroyWindow (int *,int ) ;
 int XFreeColormap (int *,int ) ;
 int XFreePixmap (int *,int ) ;
 int XSync (int *,int ) ;
 int XUnmapWindow (int *,int ) ;
 int autorepeat_off () ;
 int autorepeat_restore () ;
 int close (int) ;
 int cmap ;
 int * display ;
 int free (int *) ;
 int * image ;
 int * image_data ;
 int js0 ;
 int js1 ;
 int pixmap ;
 scalar_t__ private_cmap ;
 int window ;

int PLATFORM_Exit(int run_monitor)
{
 int restart;

 Log_flushlog();
 if (run_monitor) {
  autorepeat_restore();
  restart = MONITOR_Run();
  autorepeat_off();
 }
 else
  restart = FALSE;

 if (!restart) {
  if (image_data != ((void*)0))
   free(image_data);

  if (display != ((void*)0)) {
   XSync(display, True);

   if (private_cmap)
    XFreeColormap(display, cmap);





   XFreePixmap(display, pixmap);

   XUnmapWindow(display, window);
   XDestroyWindow(display, window);
   autorepeat_restore();
   XCloseDisplay(display);
  }
 }
 return restart;
}
