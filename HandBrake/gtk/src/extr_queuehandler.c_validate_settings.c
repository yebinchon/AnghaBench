
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_title_t ;
typedef scalar_t__ gint ;
typedef int const gchar ;
typedef int gboolean ;
typedef int GtkWindow ;
typedef int GhbValue ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int GTK_MESSAGE_ERROR ;
 int GTK_MESSAGE_QUESTION ;
 int * GTK_WINDOW (int ) ;
 int G_FILE_TEST_EXISTS ;
 int G_FILE_TEST_IS_DIR ;
 int R_OK ;
 int TRUE ;
 int W_OK ;
 int * _ (char*) ;
 scalar_t__ g_access (int const*,int) ;
 scalar_t__ g_file_test (int const*,int ) ;
 int g_free (int const*) ;
 int const* g_path_get_dirname (int const*) ;
 int const* g_strdup_printf (int *,int const*) ;
 int g_unlink (int const*) ;
 int * ghb_array_get (int ,scalar_t__) ;
 scalar_t__ ghb_array_len (int ) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;
 int const* ghb_dict_get_string (int *,char*) ;
 int * ghb_lookup_title (scalar_t__,scalar_t__*) ;
 int ghb_message_dialog (int *,int ,int const*,int *,int *) ;
 int ghb_validate_audio (int *,int *) ;
 int ghb_validate_filters (int *,int *) ;
 int ghb_validate_subtitles (int *,int *) ;
 int ghb_validate_video (int *,int *) ;
 scalar_t__ strcmp (int const*,int const*) ;

__attribute__((used)) static gboolean
validate_settings(signal_user_data_t *ud, GhbValue *settings, gint batch)
{


    gchar *message;
    const gchar *dest;
    gint count, ii;
    gint title_id, titleindex;
    const hb_title_t *title;
    GtkWindow *hb_window;

    hb_window = GTK_WINDOW(GHB_WIDGET(ud->builder, "hb_window"));

    title_id = ghb_dict_get_int(settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    if (title == ((void*)0)) return FALSE;
    dest = ghb_dict_get_string(settings, "destination");
    count = ghb_array_len(ud->queue);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *queueDict, *uiDict;
        const gchar *filename;

        queueDict = ghb_array_get(ud->queue, ii);
        uiDict = ghb_dict_get(queueDict, "uiSettings");
        filename = ghb_dict_get_string(uiDict, "destination");
        if (strcmp(dest, filename) == 0)
        {
            message = g_strdup_printf(
                        _("Destination: %s\n\n"
                        "Another queued job has specified the same destination.\n"
                        "Do you want to overwrite?"),
                        dest);
            if (!ghb_message_dialog(hb_window, GTK_MESSAGE_QUESTION,
                                    message, _("Cancel"), _("Overwrite")))
            {
                g_free(message);
                return FALSE;
            }
            g_free(message);
            break;
        }
    }
    gchar *destdir = g_path_get_dirname(dest);
    if (!g_file_test(destdir, G_FILE_TEST_IS_DIR))
    {
        message = g_strdup_printf(
                    _("Destination: %s\n\n"
                    "This is not a valid directory."),
                    destdir);
        ghb_message_dialog(hb_window, GTK_MESSAGE_ERROR,
                           message, _("Cancel"), ((void*)0));
        g_free(message);
        g_free(destdir);
        return FALSE;
    }


    if (g_access(destdir, R_OK|W_OK) != 0)
    {
        message = g_strdup_printf(
                    _("Destination: %s\n\n"
                    "Can not read or write the directory."),
                    destdir);
        ghb_message_dialog(hb_window, GTK_MESSAGE_ERROR,
                           message, _("Cancel"), ((void*)0));
        g_free(message);
        g_free(destdir);
        return FALSE;
    }

    g_free(destdir);
    if (g_file_test(dest, G_FILE_TEST_EXISTS))
    {
        message = g_strdup_printf(
                    _("Destination: %s\n\n"
                    "File already exists.\n"
                    "Do you want to overwrite?"),
                    dest);
        if (!ghb_message_dialog(hb_window, GTK_MESSAGE_QUESTION,
                                message, _("Cancel"), _("Overwrite")))
        {
            g_free(message);
            return FALSE;
        }
        g_free(message);
        g_unlink(dest);
    }

    if (!ghb_validate_audio(settings, hb_window))
    {
        return FALSE;
    }

    if (!ghb_validate_subtitles(settings, hb_window))
    {
        return FALSE;
    }

    if (!ghb_validate_video(settings, hb_window))
    {
        return FALSE;
    }

    if (!ghb_validate_filters(settings, hb_window))
    {
        return FALSE;
    }
    return TRUE;
}
