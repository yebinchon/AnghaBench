#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int GLint ;
typedef  scalar_t__ Float64 ;
typedef  int CGSWindowID ;
typedef  int CGSSurfaceID ;
typedef  int CGSConnectionID ;
typedef  int /*<<< orphan*/  CGLContextObj ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  scalar_t__ CFDictionaryRef ;
typedef  int /*<<< orphan*/  CFArrayRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int,int,int*) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kCFNumberFloat64Type ; 
 scalar_t__ kCGErrorSuccess ; 
 int /*<<< orphan*/  kCGLCPHasDrawable ; 
 int /*<<< orphan*/  kCGWindowBounds ; 
 int /*<<< orphan*/  kCGWindowListOptionIncludingWindow ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static CGSSurfaceID FUNC14(CGLContextObj glCtx,
   CGSWindowID wid, int *width, int *height)
{
    CFArrayRef wins;
    CFDictionaryRef win, bnd;
    GLint params = 0;
    Float64 w = 0, h = 0;
    CGSSurfaceID sid = 0;
    CGSConnectionID cid = FUNC9();

    FUNC13("cid:%d wid:%d\n", cid, wid);

    /* determine window size */
    /* FIXME/TODO - CGWindowListCopyWindowInfo was introduced on OSX 10.5,
     * find alternative for lower versions. */
    wins = FUNC12(kCGWindowListOptionIncludingWindow, wid); /* expect one result only */
    win = (CFDictionaryRef)FUNC0(wins, 0);
    bnd = (CFDictionaryRef)FUNC1(win, kCGWindowBounds);
    FUNC2((CFNumberRef)FUNC1((CFDictionaryRef)bnd, FUNC4("Width")),
       kCFNumberFloat64Type, &w);
    FUNC2((CFNumberRef)FUNC1(bnd, FUNC4("Height")),
       kCFNumberFloat64Type, &h);
    FUNC3(wins);

    /* create a surface. */
    if(FUNC8(cid, wid, &sid) != kCGErrorSuccess)
    {
       FUNC13("ERR: no surface\n");
    }
    FUNC13("sid:%d\n", sid);

    /* set surface size, and order it frontmost */
    if(FUNC11(cid, wid, sid, FUNC7(0, 0, w, h)) != kCGErrorSuccess)
       FUNC13("ERR: cant set bounds\n");
    if(FUNC10(cid, wid, sid, 1, 0) != kCGErrorSuccess)
       FUNC13("ERR: cant order front\n");

    /* attach context to the surface */
    if(FUNC6(glCtx, cid, wid, sid) != kCGErrorSuccess)
    {
       FUNC13("ERR: cant set surface\n");
    }

    /* check drawable */
    FUNC5(glCtx, kCGLCPHasDrawable, &params);
    if(params != 1)
    {
       FUNC13("ERR: no drawable\n");
    }

    *width  = (int)w;
    *height = (int)h;

    return sid;
}