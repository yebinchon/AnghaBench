
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
typedef int gboolean ;
struct TYPE_4__ {scalar_t__ timeout; int dlg; int action; int msg; TYPE_3__* ud; } ;
typedef TYPE_1__ countdown_t ;
struct TYPE_5__ {int app; } ;


 int FALSE ;
 int G_APPLICATION (int ) ;
 int TRUE ;
 int _ (char*) ;
 int g_application_quit (int ) ;
 int g_free (int *) ;
 int * g_strdup_printf (int ,int ,int ,scalar_t__) ;
 int ghb_hb_cleanup (int ) ;
 int ghb_shutdown_gsm () ;
 int gtk_message_dialog_set_markup (int ,int *) ;
 int prune_logs (TYPE_3__*) ;

__attribute__((used)) static gboolean
shutdown_cb(countdown_t *cd)
{
    gchar *str;

    cd->timeout--;
    if (cd->timeout == 0)
    {
        ghb_hb_cleanup(FALSE);
        prune_logs(cd->ud);

        ghb_shutdown_gsm();
        g_application_quit(G_APPLICATION(cd->ud->app));
        return FALSE;
    }
    str = g_strdup_printf(_("%s\n\n%s in %d seconds ..."),
                            cd->msg, cd->action, cd->timeout);
    gtk_message_dialog_set_markup(cd->dlg, str);
    g_free(str);
    return TRUE;
}
