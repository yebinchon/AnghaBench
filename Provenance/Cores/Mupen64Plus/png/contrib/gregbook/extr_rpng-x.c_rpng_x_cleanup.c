
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;


 int XDestroyImage (TYPE_1__*) ;
 int XDestroyWindow (int ,int ) ;
 int XFree (int ) ;
 int XFreeColormap (int ,int ) ;
 int XFreeGC (int ,int ) ;
 int colormap ;
 int display ;
 int free (char*) ;
 int gc ;
 scalar_t__ have_colormap ;
 scalar_t__ have_gc ;
 scalar_t__ have_nondefault_visual ;
 scalar_t__ have_window ;
 char* image_data ;
 int visual_list ;
 int window ;
 TYPE_1__* ximage ;

__attribute__((used)) static void rpng_x_cleanup(void)
{
    if (image_data) {
        free(image_data);
        image_data = ((void*)0);
    }

    if (ximage) {
        if (ximage->data) {
            free(ximage->data);
            ximage->data = (char *)((void*)0);
        }
        XDestroyImage(ximage);
        ximage = ((void*)0);
    }

    if (have_gc)
        XFreeGC(display, gc);

    if (have_window)
        XDestroyWindow(display, window);

    if (have_colormap)
        XFreeColormap(display, colormap);

    if (have_nondefault_visual)
        XFree(visual_list);
}
