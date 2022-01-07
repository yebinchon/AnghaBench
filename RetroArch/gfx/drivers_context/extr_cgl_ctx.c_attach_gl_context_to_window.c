
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef scalar_t__ Float64 ;
typedef int CGSWindowID ;
typedef int CGSSurfaceID ;
typedef int CGSConnectionID ;
typedef int CGLContextObj ;
typedef int CFNumberRef ;
typedef scalar_t__ CFDictionaryRef ;
typedef int CFArrayRef ;


 scalar_t__ CFArrayGetValueAtIndex (int ,int ) ;
 scalar_t__ CFDictionaryGetValue (scalar_t__,int ) ;
 int CFNumberGetValue (int ,int ,scalar_t__*) ;
 int CFRelease (int ) ;
 int CFSTR (char*) ;
 int CGLGetParameter (int ,int ,int*) ;
 scalar_t__ CGLSetSurface (int ,int,int,int) ;
 int CGRectMake (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ CGSAddSurface (int,int,int*) ;
 int CGSMainConnectionID () ;
 scalar_t__ CGSOrderSurface (int,int,int,int,int ) ;
 scalar_t__ CGSSetSurfaceBounds (int,int,int,int ) ;
 int CGWindowListCopyWindowInfo (int ,int) ;
 int kCFNumberFloat64Type ;
 scalar_t__ kCGErrorSuccess ;
 int kCGLCPHasDrawable ;
 int kCGWindowBounds ;
 int kCGWindowListOptionIncludingWindow ;
 int printf (char*,...) ;

__attribute__((used)) static CGSSurfaceID attach_gl_context_to_window(CGLContextObj glCtx,
   CGSWindowID wid, int *width, int *height)
{
    CFArrayRef wins;
    CFDictionaryRef win, bnd;
    GLint params = 0;
    Float64 w = 0, h = 0;
    CGSSurfaceID sid = 0;
    CGSConnectionID cid = CGSMainConnectionID();

    printf("cid:%d wid:%d\n", cid, wid);




    wins = CGWindowListCopyWindowInfo(kCGWindowListOptionIncludingWindow, wid);
    win = (CFDictionaryRef)CFArrayGetValueAtIndex(wins, 0);
    bnd = (CFDictionaryRef)CFDictionaryGetValue(win, kCGWindowBounds);
    CFNumberGetValue((CFNumberRef)CFDictionaryGetValue((CFDictionaryRef)bnd, CFSTR("Width")),
       kCFNumberFloat64Type, &w);
    CFNumberGetValue((CFNumberRef)CFDictionaryGetValue(bnd, CFSTR("Height")),
       kCFNumberFloat64Type, &h);
    CFRelease(wins);


    if(CGSAddSurface(cid, wid, &sid) != kCGErrorSuccess)
    {
       printf("ERR: no surface\n");
    }
    printf("sid:%d\n", sid);


    if(CGSSetSurfaceBounds(cid, wid, sid, CGRectMake(0, 0, w, h)) != kCGErrorSuccess)
       printf("ERR: cant set bounds\n");
    if(CGSOrderSurface(cid, wid, sid, 1, 0) != kCGErrorSuccess)
       printf("ERR: cant order front\n");


    if(CGLSetSurface(glCtx, cid, wid, sid) != kCGErrorSuccess)
    {
       printf("ERR: cant set surface\n");
    }


    CGLGetParameter(glCtx, kCGLCPHasDrawable, &params);
    if(params != 1)
    {
       printf("ERR: no drawable\n");
    }

    *width = (int)w;
    *height = (int)h;

    return sid;
}
