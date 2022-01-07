
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pixels; int pixels_height; int pixels_width; } ;
typedef TYPE_3__ YuiGl ;
struct TYPE_10__ {int height; int width; } ;
struct TYPE_12__ {TYPE_2__ allocation; TYPE_1__* style; int window; } ;
struct TYPE_9__ {int * bg_gc; } ;


 int GL_RGB ;
 int GL_UNSIGNED_BYTE ;
 TYPE_7__* GTK_WIDGET (TYPE_3__*) ;
 size_t GTK_WIDGET_STATE (TYPE_3__*) ;
 int TRUE ;
 scalar_t__ dispbuffer ;
 int gdk_draw_rectangle (int ,int ,int ,int ,int ,int ,int ) ;
 int glBitmap (int ,int ,int ,int ,int ,int ,int *) ;
 int glDrawPixels (int ,int ,int ,int ,scalar_t__) ;
 int glPixelZoom (int,int) ;
 int glRasterPos2i (int ,int ) ;
 int yui_gl_draw (TYPE_3__*) ;

void yui_gl_draw_pause(YuiGl * glxarea) {
 if (dispbuffer)
  yui_gl_draw(glxarea);

}
