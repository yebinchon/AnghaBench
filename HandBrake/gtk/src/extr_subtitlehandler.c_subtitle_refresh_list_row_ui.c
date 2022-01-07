
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef scalar_t__ gboolean ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;
typedef int GString ;


 int FALSE ;
 int GTK_TREE_STORE (int *) ;
 int g_free (char*) ;
 char* g_strdup (char*) ;
 char* g_strdup_printf (char*,scalar_t__) ;
 int g_string_append_printf (int *,char*,...) ;
 char* g_string_free (int *,int ) ;
 int * g_string_new (char*) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;
 scalar_t__ gtk_tree_model_iter_children (int *,int *,int *) ;
 int gtk_tree_store_append (int ,int *,int *) ;
 int gtk_tree_store_remove (int ,int *) ;
 int gtk_tree_store_set (int ,int *,int ,char*,int,char*,int,...) ;
 char* subtitle_get_track_description (int *,int *) ;

__attribute__((used)) static void
subtitle_refresh_list_row_ui(
    GtkTreeModel *tm,
    GtkTreeIter *ti,
    GhbValue *settings,
    GhbValue *subsettings)
{
    GtkTreeIter cti;
    gboolean forced, burned, def;
    char *info_src, *info_src_2;
    char *info_dst, *info_dst_2;
    char *desc;


    info_src_2 = ((void*)0);
    info_dst_2 = ((void*)0);

    forced = ghb_dict_get_bool(subsettings, "Forced");
    burned = ghb_dict_get_bool(subsettings, "Burn");
    def = ghb_dict_get_bool(subsettings, "Default");
    desc = subtitle_get_track_description(settings, subsettings);
    info_src = g_strdup_printf("<small>%s</small>", desc);
    g_free(desc);
    if (ghb_dict_get(subsettings, "Import") != ((void*)0))
    {
        gint offset;
        offset = ghb_dict_get_int(subsettings, "Offset");
        if (offset != 0)
        {
            info_dst_2 = g_strdup_printf("Offset: %dms", offset);
        }
    }

    GString *str = g_string_new("<small>");
    g_string_append_printf(str, "%s ", burned ? "Burned Into Video" :
                                                "Passthrough");
    if (forced)
    {
        g_string_append_printf(str, "(Forced Subtitles Only)");
    }
    if (def)
    {
        g_string_append_printf(str, "(Default)");
    }
    g_string_append_printf(str, "</small>");

    info_dst = g_string_free(str, FALSE);

    gtk_tree_store_set(GTK_TREE_STORE(tm), ti,

        0, info_src,
        1, "-->",
        2, info_dst,
        3, "hb-edit",
        4, "hb-remove",
        5, 0.5,
        -1);

    if (info_src_2 != ((void*)0) || info_dst_2 != ((void*)0))
    {
        if (info_src_2 == ((void*)0))
            info_src_2 = g_strdup("");
        if (info_dst_2 == ((void*)0))
            info_dst_2 = g_strdup("");

        if (!gtk_tree_model_iter_children(tm, &cti, ti))
        {
            gtk_tree_store_append(GTK_TREE_STORE(tm), &cti, ti);
        }
        gtk_tree_store_set(GTK_TREE_STORE(tm), &cti,

            0, info_src_2,
            2, info_dst_2,
            5, 0.0,
            -1);
    }
    else
    {
        if (gtk_tree_model_iter_children(tm, &cti, ti))
        {
            gtk_tree_store_remove(GTK_TREE_STORE(tm), &cti);
        }
    }

    g_free(info_src);
    g_free(info_src_2);
    g_free(info_dst);
    g_free(info_dst_2);
}
