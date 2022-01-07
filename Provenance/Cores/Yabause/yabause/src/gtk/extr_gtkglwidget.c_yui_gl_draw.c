
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int guchar ;
struct TYPE_10__ {int pixels_width; int pixels_height; int pixels_rowstride; int is_init; } ;
typedef TYPE_2__ YuiGl ;
struct TYPE_12__ {int (* GetGlSize ) (int*,int*) ;} ;
struct TYPE_9__ {int width; int height; } ;
struct TYPE_11__ {int window; TYPE_1__ allocation; } ;
typedef int GdkPixbuf ;
typedef int GdkGLDrawable ;
typedef int GdkGLContext ;


 int GDK_COLORSPACE_RGB ;
 int GDK_INTERP_NEAREST ;
 int GDK_RGB_DITHER_NONE ;
 TYPE_4__* GTK_WIDGET (TYPE_2__*) ;
 int TRUE ;
 TYPE_6__* VIDCore ;
 int X_NOSCALE ;
 int Y_NOSCALE ;
 int * dispbuffer ;
 int g_object_unref (int *) ;
 int g_print (char*) ;
 int gdk_draw_pixbuf (int ,int *,int *,int ,int ,int,int,int,int,int ,int ,int ) ;
 int gdk_gl_drawable_make_current (int *,int *) ;
 int gdk_gl_drawable_swap_buffers (int *) ;
 int * gdk_pixbuf_new_from_data (int const*,int ,int ,int,int,int,int,int *,int *) ;
 int * gdk_pixbuf_scale_simple (int *,int,int,int ) ;
 int * gtk_widget_get_gl_context (TYPE_4__*) ;
 int * gtk_widget_get_gl_drawable (TYPE_4__*) ;
 int stub1 (int*,int*) ;

void yui_gl_draw(YuiGl * glxarea) {
 int buf_width, buf_height;
 GdkPixbuf * pixbuf, * scaledpixbuf;

 VIDCore->GetGlSize( &buf_width, &buf_height );
 glxarea->pixels_width = GTK_WIDGET(glxarea)->allocation.width;
 glxarea->pixels_height = GTK_WIDGET(glxarea)->allocation.height;
 glxarea->pixels_rowstride = glxarea->pixels_width * 4;
 glxarea->pixels_rowstride += (glxarea->pixels_rowstride % 4)? (4 - (glxarea->pixels_rowstride % 4)): 0;

 if (dispbuffer == ((void*)0)) return;

 pixbuf = gdk_pixbuf_new_from_data((const guchar *) dispbuffer, GDK_COLORSPACE_RGB, TRUE, 8,
   buf_width, buf_height, buf_width*4, ((void*)0), ((void*)0));

 if (( glxarea->pixels_width < buf_width + X_NOSCALE )&&( glxarea->pixels_height < buf_height + Y_NOSCALE )) {

   gdk_draw_pixbuf(GTK_WIDGET(glxarea)->window, ((void*)0), pixbuf, 0, 0,
     (glxarea->pixels_width-buf_width)/2, (glxarea->pixels_height-buf_height)/2,
     buf_width, buf_height, GDK_RGB_DITHER_NONE, 0, 0);
 } else {

   scaledpixbuf = gdk_pixbuf_scale_simple(pixbuf,
       glxarea->pixels_width, glxarea->pixels_height, GDK_INTERP_NEAREST );
   gdk_draw_pixbuf(GTK_WIDGET(glxarea)->window, ((void*)0),
     scaledpixbuf, 0, 0, 0, 0, glxarea->pixels_width, glxarea->pixels_height,
     GDK_RGB_DITHER_NONE, 0, 0);
   g_object_unref(scaledpixbuf);
 }
 g_object_unref(pixbuf);

 glxarea->is_init = 1;
}
