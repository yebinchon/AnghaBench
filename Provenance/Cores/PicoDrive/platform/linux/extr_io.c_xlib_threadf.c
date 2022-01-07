
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sem_t ;
typedef int XTextProperty ;
struct TYPE_10__ {int keycode; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; } ;
struct TYPE_11__ {int type; TYPE_2__ xkey; TYPE_1__ xconfigure; } ;
typedef TYPE_3__ XEvent ;
typedef int Window ;
struct TYPE_12__ {scalar_t__ class; } ;
typedef TYPE_4__ Visual ;
typedef int Display ;


 int BlackPixel (int *,int) ;


 int DefaultScreen (int *) ;
 TYPE_4__* DefaultVisual (int *,int ) ;
 unsigned int DisplayHeight (int *,int) ;
 char* DisplayString (int *) ;
 unsigned int DisplayWidth (int *,int) ;

 int ExposureMask ;

 int KeyPressMask ;

 int KeyReleaseMask ;
 int ProtocolRevision (int *) ;
 int ProtocolVersion (int *) ;
 int RootWindow (int *,int) ;
 char* ServerVendor (int *) ;
 int StructureNotifyMask ;
 scalar_t__ TrueColor ;
 int VendorRelease (int *) ;
 int XCheckTypedEvent (int *,int const,TYPE_3__*) ;
 int XCloseDisplay (int *) ;
 int XCreateSimpleWindow (int *,int ,unsigned int,unsigned int,int,int,int,int ,int ) ;
 char* XDisplayName (int *) ;
 int XInitThreads () ;
 int XMapWindow (int *,int ) ;
 int XNextEvent (int *,TYPE_3__*) ;
 int * XOpenDisplay (int *) ;
 int XSelectInput (int *,int ,int) ;
 int XSetWMName (int *,int ,int *) ;
 int XStringListToTextProperty (char**,int,int *) ;
 int fprintf (int ,char*,...) ;
 int key_press_event (int ) ;
 int key_release_event (int ) ;
 int printf (char*,char*,int,char*,int,int) ;
 int scr_changed ;
 int scr_h ;
 int scr_w ;
 int sem_post (int *) ;
 int stderr ;
 int verstring ;
 int ximage_realloc (int *,TYPE_4__*) ;
 int * xlib_display ;
 int xlib_update () ;
 int xlib_window ;

__attribute__((used)) static void *xlib_threadf(void *targ)
{
 unsigned int width, height, display_width, display_height;
 sem_t *sem = targ;
 XTextProperty windowName;
 Window win;
 XEvent report;
 Display *display;
 Visual *visual;
 int screen;

 XInitThreads();

 xlib_display = display = XOpenDisplay(((void*)0));
 if (display == ((void*)0))
 {
  fprintf(stderr, "cannot connect to X server %s\n",
    XDisplayName(((void*)0)));
  sem_post(sem);
  return ((void*)0);
 }

 visual = DefaultVisual(display, 0);
 if (visual->class != TrueColor)
 {
  fprintf(stderr, "cannot handle non true color visual\n");
  XCloseDisplay(display);
  sem_post(sem);
  return ((void*)0);
 }

 printf("X vendor: %s, rel: %d, display: %s, protocol ver: %d.%d\n", ServerVendor(display),
  VendorRelease(display), DisplayString(display), ProtocolVersion(display),
  ProtocolRevision(display));

 screen = DefaultScreen(display);

 ximage_realloc(display, visual);
 sem_post(sem);

 display_width = DisplayWidth(display, screen);
 display_height = DisplayHeight(display, screen);

 xlib_window = win = XCreateSimpleWindow(display,
   RootWindow(display, screen),
   display_width / 2 - scr_w / 2,
   display_height / 2 - scr_h / 2,
   scr_w + 2, scr_h + 2, 1,
   BlackPixel(display, screen),
   BlackPixel(display, screen));

 XStringListToTextProperty((char **)&verstring, 1, &windowName);
 XSetWMName(display, win, &windowName);

 XSelectInput(display, win, ExposureMask |
   KeyPressMask | KeyReleaseMask |
   StructureNotifyMask);

 XMapWindow(display, win);

 while (1)
 {
  XNextEvent(display, &report);
  switch (report.type)
  {
   case 130:
    while (XCheckTypedEvent(display, 130, &report))
     ;
    xlib_update();
    break;

   case 131:
    width = report.xconfigure.width;
    height = report.xconfigure.height;
    if (scr_w != width - 2 || scr_h != height - 2) {
     scr_w = width - 2;
     scr_h = height - 2;
     scr_changed = 1;
    }
    break;

   case 132:
    break;

   case 129:
    key_press_event(report.xkey.keycode);
    break;

   case 128:
    key_release_event(report.xkey.keycode);
    break;

   default:
    break;
  }
 }
}
