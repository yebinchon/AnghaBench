
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_7__ {int (* Resize ) (int ,int ,int ) ;} ;
struct TYPE_6__ {scalar_t__ is_init; } ;
struct TYPE_5__ {int height; int width; } ;
typedef int GtkWidget ;
typedef int GdkGLDrawable ;
typedef int GdkGLContext ;
typedef TYPE_1__ GdkEventConfigure ;


 int FALSE ;
 TYPE_4__* VIDCore ;
 TYPE_3__* YUI_GL (int *) ;
 int gdk_gl_drawable_gl_begin (int *,int *) ;
 int glViewport (int ,int ,int ,int ) ;
 int * gtk_widget_get_gl_context (int *) ;
 int * gtk_widget_get_gl_drawable (int *) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static gboolean yui_gl_resize(GtkWidget *w,GdkEventConfigure *event, gpointer data) {
 return FALSE;
}
