
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; } ;
typedef TYPE_1__ YuiWindow ;
typedef int GtkTextIter ;
typedef int GtkTextBuffer ;


 int GTK_TEXT_VIEW (int ) ;
 int gtk_text_buffer_get_start_iter (int *,int *) ;
 int gtk_text_buffer_insert (int *,int *,char const*,int) ;
 int * gtk_text_view_get_buffer (int ) ;

void yui_window_log(YuiWindow * yui, const char * message) {
 GtkTextBuffer * buffer;
 GtkTextIter iter;

 buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(yui->log));
 gtk_text_buffer_get_start_iter(buffer, &iter);
 gtk_text_buffer_insert(buffer, &iter, message, -1);
}
