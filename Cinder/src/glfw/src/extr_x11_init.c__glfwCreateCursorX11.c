
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned int XcursorPixel ;
struct TYPE_10__ {int xhot; int yhot; unsigned int* pixels; } ;
typedef TYPE_2__ XcursorImage ;
struct TYPE_9__ {int display; } ;
struct TYPE_12__ {TYPE_1__ x11; } ;
struct TYPE_11__ {int width; int height; scalar_t__ pixels; } ;
typedef TYPE_3__ GLFWimage ;
typedef int Cursor ;


 int None ;
 TYPE_2__* XcursorImageCreate (int,int) ;
 int XcursorImageDestroy (TYPE_2__*) ;
 int XcursorImageLoadCursor (int ,TYPE_2__*) ;
 TYPE_5__ _glfw ;

Cursor _glfwCreateCursorX11(const GLFWimage* image, int xhot, int yhot)
{
    int i;
    Cursor cursor;

    XcursorImage* native = XcursorImageCreate(image->width, image->height);
    if (native == ((void*)0))
        return None;

    native->xhot = xhot;
    native->yhot = yhot;

    unsigned char* source = (unsigned char*) image->pixels;
    XcursorPixel* target = native->pixels;

    for (i = 0; i < image->width * image->height; i++, target++, source += 4)
    {
        unsigned int alpha = source[3];

        *target = (alpha << 24) |
                  ((unsigned char) ((source[0] * alpha) / 255) << 16) |
                  ((unsigned char) ((source[1] * alpha) / 255) << 8) |
                  ((unsigned char) ((source[2] * alpha) / 255) << 0);
    }

    cursor = XcursorImageLoadCursor(_glfw.x11.display, native);
    XcursorImageDestroy(native);

    return cursor;
}
