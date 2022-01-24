#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int event_mask; scalar_t__ border_pixel; int /*<<< orphan*/  colormap; } ;
typedef  TYPE_2__ XSetWindowAttributes ;
struct TYPE_15__ {int /*<<< orphan*/  graphics_exposures; } ;
typedef  TYPE_3__ XGCValues ;
struct TYPE_13__ {int /*<<< orphan*/  count; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_1__ xexpose; } ;
struct TYPE_17__ {int /*<<< orphan*/  visual; } ;
struct TYPE_16__ {int bytes_per_line; int height; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AllocAll ; 
 int ButtonPressMask ; 
 int ButtonReleaseMask ; 
 unsigned long CWBorderPixel ; 
 unsigned long CWColormap ; 
 unsigned long CWEventMask ; 
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ Expose ; 
 int ExposureMask ; 
 int /*<<< orphan*/  False ; 
 int GCGraphicsExposures ; 
 int /*<<< orphan*/  GrabModeAsync ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ I_Quit ; 
 int /*<<< orphan*/  InputOutput ; 
 int KeyPressMask ; 
 int KeyReleaseMask ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  None ; 
 int PointerMotionMask ; 
 int /*<<< orphan*/  PseudoColor ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ ShmCompletion ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_cmap ; 
 int /*<<< orphan*/  X_display ; 
 TYPE_6__ X_event ; 
 int /*<<< orphan*/  X_gc ; 
 int X_height ; 
 int /*<<< orphan*/  X_mainWindow ; 
 int /*<<< orphan*/  X_screen ; 
 scalar_t__ X_shmeventtype ; 
 int /*<<< orphan*/  X_shminfo ; 
 int /*<<< orphan*/  X_visual ; 
 TYPE_5__ X_visualinfo ; 
 int X_width ; 
 int /*<<< orphan*/  ZPixmap ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int doShm ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC20 (char*) ; 
 int grabMouse ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 TYPE_4__* image ; 
 scalar_t__ FUNC22 (int) ; 
 int multiply ; 
 char** myargv ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 unsigned char** screens ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,void (*) (int)) ; 
 int FUNC25 (char*,char*,char*,int*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 

void FUNC27(void)
{

    char*		displayname;
    char*		d;
    int			n;
    int			pnum;
    int			x=0;
    int			y=0;
    
    // warning: char format, different type arg
    char		xsign=' ';
    char		ysign=' ';
    
    int			oktodraw;
    unsigned long	attribmask;
    XSetWindowAttributes attribs;
    XGCValues		xgcvalues;
    int			valuemask;
    static int		firsttime=1;

    if (!firsttime)
	return;
    firsttime = 0;

    FUNC24(SIGINT, (void (*)(int)) I_Quit);

    if (FUNC2("-2"))
	multiply = 2;

    if (FUNC2("-3"))
	multiply = 3;

    if (FUNC2("-4"))
	multiply = 4;

    X_width = SCREENWIDTH * multiply;
    X_height = SCREENHEIGHT * multiply;

    // check for command-line display name
    if ( (pnum=FUNC2("-disp")) ) // suggest parentheses around assignment
	displayname = myargv[pnum+1];
    else
	displayname = 0;

    // check if the user wants to grab the mouse (quite unnice)
    grabMouse = !!FUNC2("-grabmouse");

    // check for command-line geometry
    if ( (pnum=FUNC2("-geom")) ) // suggest parentheses around assignment
    {
	// warning: char format, different type arg 3,5
	n = FUNC25(myargv[pnum+1], "%c%d%c%d", &xsign, &x, &ysign, &y);
	
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
	    FUNC1("bad -geom parameter");
    }

    // open the display
    X_display = FUNC13(displayname);
    if (!X_display)
    {
	if (displayname)
	    FUNC1("Could not open display [%s]", displayname);
	else
	    FUNC1("Could not open display (DISPLAY=[%s])", FUNC20("DISPLAY"));
    }

    // use the default visual 
    X_screen = FUNC0(X_display);
    if (!FUNC11(X_display, X_screen, 8, PseudoColor, &X_visualinfo))
	FUNC1("xdoom currently only supports 256-color PseudoColor screens");
    X_visual = X_visualinfo.visual;

    // check for the MITSHM extension
    doShm = FUNC17(X_display);

    // even if it's available, make sure it's a local connection
    if (doShm)
    {
	if (!displayname) displayname = (char *) FUNC20("DISPLAY");
	if (displayname)
	{
	    d = displayname;
	    while (*d && (*d != ':')) d++;
	    if (*d) *d = 0;
	    if (!(!FUNC26(displayname, "unix") || !*displayname)) doShm = false;
	}
    }

    FUNC19(stderr, "Using MITSHM extension\n");

    // create the colormap
    X_cmap = FUNC4(X_display, FUNC3(X_display,
						   X_screen), X_visual, AllocAll);

    // setup attributes for main window
    attribmask = CWEventMask | CWColormap | CWBorderPixel;
    attribs.event_mask =
	KeyPressMask
	| KeyReleaseMask
	// | PointerMotionMask | ButtonPressMask | ButtonReleaseMask
	| ExposureMask;

    attribs.colormap = X_cmap;
    attribs.border_pixel = 0;

    // create the main window
    X_mainWindow = FUNC7(	X_display,
					FUNC3(X_display, X_screen),
					x, y,
					X_width, X_height,
					0, // borderwidth
					8, // depth
					InputOutput,
					X_visual,
					attribmask,
					&attribs );

    FUNC8(X_display, X_mainWindow,
		  FUNC18( X_display, X_mainWindow ) );

    // create the GC
    valuemask = GCGraphicsExposures;
    xgcvalues.graphics_exposures = False;
    X_gc = FUNC5(	X_display,
  			X_mainWindow,
  			valuemask,
  			&xgcvalues );

    // map the window
    FUNC10(X_display, X_mainWindow);

    // wait until it is OK to draw
    oktodraw = 0;
    while (!oktodraw)
    {
	FUNC12(X_display, &X_event);
	if (X_event.type == Expose
	    && !X_event.xexpose.count)
	{
	    oktodraw = 1;
	}
    }

    // grabs the pointer so it is restricted to this window
    if (grabMouse)
	FUNC9(X_display, X_mainWindow, True,
		     ButtonPressMask|ButtonReleaseMask|PointerMotionMask,
		     GrabModeAsync, GrabModeAsync,
		     X_mainWindow, None, CurrentTime);

    if (doShm)
    {

	X_shmeventtype = FUNC16(X_display) + ShmCompletion;

	// create the image
	image = FUNC15(	X_display,
					X_visual,
					8,
					ZPixmap,
					0,
					&X_shminfo,
					X_width,
					X_height );

	FUNC21(image->bytes_per_line * image->height);


	// UNUSED
	// create the shared memory segment
	// X_shminfo.shmid = shmget (IPC_PRIVATE,
	// image->bytes_per_line * image->height, IPC_CREAT | 0777);
	// if (X_shminfo.shmid < 0)
	// {
	// perror("");
	// I_Error("shmget() failed in InitGraphics()");
	// }
	// fprintf(stderr, "shared memory id=%d\n", X_shminfo.shmid);
	// attach to the shared memory segment
	// image->data = X_shminfo.shmaddr = shmat(X_shminfo.shmid, 0, 0);
	

	if (!image->data)
	{
	    FUNC23("");
	    FUNC1("shmat() failed in InitGraphics()");
	}

	// get the X server to attach to it
	if (!FUNC14(X_display, &X_shminfo))
	    FUNC1("XShmAttach() failed in InitGraphics()");

    }
    else
    {
	image = FUNC6(	X_display,
    				X_visual,
    				8,
    				ZPixmap,
    				0,
    				(char*)FUNC22(X_width * X_height),
    				X_width, X_height,
    				8,
    				X_width );

    }

    if (multiply == 1)
	screens[0] = (unsigned char *) (image->data);
    else
	screens[0] = (unsigned char *) FUNC22 (SCREENWIDTH * SCREENHEIGHT);

}