
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* image_data; char* row_pointers; } ;
struct TYPE_4__ {char* data; } ;


 int XDestroyImage (TYPE_1__*) ;
 int XDestroyWindow (int ,int ) ;
 int XFree (int ) ;
 int XFreeColormap (int ,int ) ;
 int XFreeGC (int ,int ) ;
 char* bg_data ;
 scalar_t__ bg_image ;
 int colormap ;
 int display ;
 int free (char*) ;
 int gc ;
 scalar_t__ have_colormap ;
 scalar_t__ have_gc ;
 scalar_t__ have_nondefault_visual ;
 scalar_t__ have_window ;
 TYPE_2__ rpng2_info ;
 int visual_list ;
 int window ;
 TYPE_1__* ximage ;

__attribute__((used)) static void rpng2_x_cleanup(void)
{
    if (bg_image && bg_data) {
        free(bg_data);
        bg_data = ((void*)0);
    }

    if (rpng2_info.image_data) {
        free(rpng2_info.image_data);
        rpng2_info.image_data = ((void*)0);
    }

    if (rpng2_info.row_pointers) {
        free(rpng2_info.row_pointers);
        rpng2_info.row_pointers = ((void*)0);
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
