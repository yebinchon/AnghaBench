
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int event_mask; scalar_t__ border_pixel; int colormap; } ;
typedef TYPE_2__ XSetWindowAttributes ;
struct TYPE_15__ {int graphics_exposures; } ;
typedef TYPE_3__ XGCValues ;
struct TYPE_13__ {int count; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_1__ xexpose; } ;
struct TYPE_17__ {int visual; } ;
struct TYPE_16__ {int bytes_per_line; int height; scalar_t__ data; } ;


 int AllocAll ;
 int ButtonPressMask ;
 int ButtonReleaseMask ;
 unsigned long CWBorderPixel ;
 unsigned long CWColormap ;
 unsigned long CWEventMask ;
 int CurrentTime ;
 int DefaultScreen (int ) ;
 scalar_t__ Expose ;
 int ExposureMask ;
 int False ;
 int GCGraphicsExposures ;
 int GrabModeAsync ;
 int I_Error (char*,...) ;
 scalar_t__ I_Quit ;
 int InputOutput ;
 int KeyPressMask ;
 int KeyReleaseMask ;
 int M_CheckParm (char*) ;
 int None ;
 int PointerMotionMask ;
 int PseudoColor ;
 int RootWindow (int ,int ) ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int SIGINT ;
 scalar_t__ ShmCompletion ;
 int True ;
 int XCreateColormap (int ,int ,int ,int ) ;
 int XCreateGC (int ,int ,int,TYPE_3__*) ;
 TYPE_4__* XCreateImage (int ,int ,int,int ,int ,char*,int,int,int,int) ;
 int XCreateWindow (int ,int ,int,int,int,int,int ,int,int ,int ,unsigned long,TYPE_2__*) ;
 int XDefineCursor (int ,int ,int ) ;
 int XGrabPointer (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int XMapWindow (int ,int ) ;
 int XMatchVisualInfo (int ,int ,int,int ,TYPE_5__*) ;
 int XNextEvent (int ,TYPE_6__*) ;
 int XOpenDisplay (char*) ;
 int XShmAttach (int ,int *) ;
 TYPE_4__* XShmCreateImage (int ,int ,int,int ,int ,int *,int,int) ;
 scalar_t__ XShmGetEventBase (int ) ;
 int XShmQueryExtension (int ) ;
 int X_cmap ;
 int X_display ;
 TYPE_6__ X_event ;
 int X_gc ;
 int X_height ;
 int X_mainWindow ;
 int X_screen ;
 scalar_t__ X_shmeventtype ;
 int X_shminfo ;
 int X_visual ;
 TYPE_5__ X_visualinfo ;
 int X_width ;
 int ZPixmap ;
 int createnullcursor (int ,int ) ;
 int doShm ;
 int fprintf (int ,char*) ;
 scalar_t__ getenv (char*) ;
 int grabMouse ;
 int grabsharedmemory (int) ;
 TYPE_4__* image ;
 scalar_t__ malloc (int) ;
 int multiply ;
 char** myargv ;
 int perror (char*) ;
 unsigned char** screens ;
 int signal (int ,void (*) (int)) ;
 int sscanf (char*,char*,char*,int*,char*,int*) ;
 int stderr ;
 int strcasecmp (char*,char*) ;

void I_InitGraphics(void)
{

    char* displayname;
    char* d;
    int n;
    int pnum;
    int x=0;
    int y=0;


    char xsign=' ';
    char ysign=' ';

    int oktodraw;
    unsigned long attribmask;
    XSetWindowAttributes attribs;
    XGCValues xgcvalues;
    int valuemask;
    static int firsttime=1;

    if (!firsttime)
 return;
    firsttime = 0;

    signal(SIGINT, (void (*)(int)) I_Quit);

    if (M_CheckParm("-2"))
 multiply = 2;

    if (M_CheckParm("-3"))
 multiply = 3;

    if (M_CheckParm("-4"))
 multiply = 4;

    X_width = SCREENWIDTH * multiply;
    X_height = SCREENHEIGHT * multiply;


    if ( (pnum=M_CheckParm("-disp")) )
 displayname = myargv[pnum+1];
    else
 displayname = 0;


    grabMouse = !!M_CheckParm("-grabmouse");


    if ( (pnum=M_CheckParm("-geom")) )
    {

 n = sscanf(myargv[pnum+1], "%c%d%c%d", &xsign, &x, &ysign, &y);

 if (n==2)
     x = y = 0;
 else if (n==6)
 {
     if (xsign == '-')
  x = -x;
     if (ysign == '-')
  y = -y;
 }
 else
     I_Error("bad -geom parameter");
    }


    X_display = XOpenDisplay(displayname);
    if (!X_display)
    {
 if (displayname)
     I_Error("Could not open display [%s]", displayname);
 else
     I_Error("Could not open display (DISPLAY=[%s])", getenv("DISPLAY"));
    }


    X_screen = DefaultScreen(X_display);
    if (!XMatchVisualInfo(X_display, X_screen, 8, PseudoColor, &X_visualinfo))
 I_Error("xdoom currently only supports 256-color PseudoColor screens");
    X_visual = X_visualinfo.visual;


    doShm = XShmQueryExtension(X_display);


    if (doShm)
    {
 if (!displayname) displayname = (char *) getenv("DISPLAY");
 if (displayname)
 {
     d = displayname;
     while (*d && (*d != ':')) d++;
     if (*d) *d = 0;
     if (!(!strcasecmp(displayname, "unix") || !*displayname)) doShm = 0;
 }
    }

    fprintf(stderr, "Using MITSHM extension\n");


    X_cmap = XCreateColormap(X_display, RootWindow(X_display,
         X_screen), X_visual, AllocAll);


    attribmask = CWEventMask | CWColormap | CWBorderPixel;
    attribs.event_mask =
 KeyPressMask
 | KeyReleaseMask

 | ExposureMask;

    attribs.colormap = X_cmap;
    attribs.border_pixel = 0;


    X_mainWindow = XCreateWindow( X_display,
     RootWindow(X_display, X_screen),
     x, y,
     X_width, X_height,
     0,
     8,
     InputOutput,
     X_visual,
     attribmask,
     &attribs );

    XDefineCursor(X_display, X_mainWindow,
    createnullcursor( X_display, X_mainWindow ) );


    valuemask = GCGraphicsExposures;
    xgcvalues.graphics_exposures = False;
    X_gc = XCreateGC( X_display,
     X_mainWindow,
     valuemask,
     &xgcvalues );


    XMapWindow(X_display, X_mainWindow);


    oktodraw = 0;
    while (!oktodraw)
    {
 XNextEvent(X_display, &X_event);
 if (X_event.type == Expose
     && !X_event.xexpose.count)
 {
     oktodraw = 1;
 }
    }


    if (grabMouse)
 XGrabPointer(X_display, X_mainWindow, True,
       ButtonPressMask|ButtonReleaseMask|PointerMotionMask,
       GrabModeAsync, GrabModeAsync,
       X_mainWindow, None, CurrentTime);

    if (doShm)
    {

 X_shmeventtype = XShmGetEventBase(X_display) + ShmCompletion;


 image = XShmCreateImage( X_display,
     X_visual,
     8,
     ZPixmap,
     0,
     &X_shminfo,
     X_width,
     X_height );

 grabsharedmemory(image->bytes_per_line * image->height);
 if (!image->data)
 {
     perror("");
     I_Error("shmat() failed in InitGraphics()");
 }


 if (!XShmAttach(X_display, &X_shminfo))
     I_Error("XShmAttach() failed in InitGraphics()");

    }
    else
    {
 image = XCreateImage( X_display,
        X_visual,
        8,
        ZPixmap,
        0,
        (char*)malloc(X_width * X_height),
        X_width, X_height,
        8,
        X_width );

    }

    if (multiply == 1)
 screens[0] = (unsigned char *) (image->data);
    else
 screens[0] = (unsigned char *) malloc (SCREENWIDTH * SCREENHEIGHT);

}
