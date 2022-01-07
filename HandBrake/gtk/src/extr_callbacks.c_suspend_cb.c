
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gchar ;
typedef int gboolean ;
struct TYPE_3__ {scalar_t__ timeout; int dlg; int action; int msg; } ;
typedef TYPE_1__ countdown_t ;


 int FALSE ;
 int GTK_WIDGET (int ) ;
 int TRUE ;
 int _ (char*) ;
 int g_free (int *) ;
 int * g_strdup_printf (int ,int ,int ,scalar_t__) ;
 int ghb_suspend_gpm () ;
 int gtk_message_dialog_set_markup (int ,int *) ;
 int gtk_widget_destroy (int ) ;

__attribute__((used)) static gboolean
suspend_cb(countdown_t *cd)
{
    gchar *str;

    cd->timeout--;
    if (cd->timeout == 0)
    {
        gtk_widget_destroy (GTK_WIDGET(cd->dlg));
        ghb_suspend_gpm();
        return FALSE;
    }
    str = g_strdup_printf(_("%s\n\n%s in %d seconds ..."),
                            cd->msg, cd->action, cd->timeout);
    gtk_message_dialog_set_markup(cd->dlg, str);
    g_free(str);
    return TRUE;
}
