
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int guint ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GdkEvent ;


 int chapter_keypress (int *,int ,int *) ;
 int ghb_event_get_keyval (int *,int *) ;

__attribute__((used)) static gboolean
chapter_keypress_cb(
    GtkWidget * widget,
    GdkEvent * event,
    signal_user_data_t * ud)
{
    guint keyval;

    ghb_event_get_keyval(event, &keyval);
    return chapter_keypress(widget, keyval, ud);
}
