#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vidWidth; int vidHeight; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Cvar_Set ) (char*,char*) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  GrabModeAsync ; 
 int /*<<< orphan*/  MOUSE_MASK ; 
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XF86DGADirectMouse ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  dpy ; 
 TYPE_3__ glConfig ; 
 TYPE_2__* in_dgamouse ; 
 int /*<<< orphan*/  mouseResetTime ; 
 int /*<<< orphan*/  mouse_accel_denominator ; 
 int /*<<< orphan*/  mouse_accel_numerator ; 
 int /*<<< orphan*/  mouse_threshold ; 
 int mwx ; 
 int mwy ; 
 scalar_t__ mx ; 
 scalar_t__ my ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  win ; 

__attribute__((used)) static void FUNC14(void)
{
  // inviso cursor
  FUNC11(dpy, None, win,
               0, 0, 0, 0,
               glConfig.vidWidth / 2, glConfig.vidHeight / 2);
  FUNC10(dpy, False);

  FUNC4(dpy, win, FUNC0(dpy, win));

  FUNC9(dpy, win, // bk010108 - do this earlier?
               False,
               MOUSE_MASK,
               GrabModeAsync, GrabModeAsync,
               win,
               None,
               CurrentTime);

  FUNC7(dpy, &mouse_accel_numerator, &mouse_accel_denominator,
                     &mouse_threshold);

  FUNC3(dpy, True, True, 1, 1, 0);

  FUNC10(dpy, False);

  mouseResetTime = FUNC2 ();

  if (in_dgamouse->value)
  {
    int MajorVersion, MinorVersion;

    if (!FUNC6(dpy, &MajorVersion, &MinorVersion))
    {
      // unable to query, probalby not supported, force the setting to 0
      ri.Printf( PRINT_ALL, "Failed to detect XF86DGA Mouse\n" );
      ri.Cvar_Set( "in_dgamouse", "0" );
    } else
    {
      FUNC5(dpy, FUNC1(dpy), XF86DGADirectMouse);
      FUNC11(dpy, None, win, 0, 0, 0, 0, 0, 0);
    }
  } else
  {
    mwx = glConfig.vidWidth / 2;
    mwy = glConfig.vidHeight / 2;
    mx = my = 0;
  }

  FUNC8(dpy, win,
                False,
                GrabModeAsync, GrabModeAsync,
                CurrentTime);

  FUNC10(dpy, False);
}