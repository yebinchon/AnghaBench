
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * current_dvd_device; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef scalar_t__ guint ;
typedef int gchar ;
typedef int GFileInfo ;
typedef int GFile ;


 scalar_t__ DRIVE_CDROM ;
 int G_FILE_ATTRIBUTE_STANDARD_TYPE ;
 int G_FILE_QUERY_INFO_NONE ;
 scalar_t__ G_FILE_TYPE_SPECIAL ;
 scalar_t__ GetDriveType (int *) ;
 scalar_t__ g_file_info_get_file_type (int *) ;
 int * g_file_new_for_path (int *) ;
 int * g_file_query_info (int *,int ,int ,int *,int *) ;
 int g_free (int *) ;
 int g_object_unref (int *) ;
 int * g_strdup (int const*) ;
 int g_strlcpy (int *,int const*,int) ;
 int * ghb_resolve_symlink (int const*) ;

void
ghb_dvd_set_current(const gchar *name, signal_user_data_t *ud)
{

    GFile *gfile;
    GFileInfo *info;
    gchar *resolved = ghb_resolve_symlink(name);

    if (ud->current_dvd_device != ((void*)0))
    {
        g_free(ud->current_dvd_device);
        ud->current_dvd_device = ((void*)0);
    }
    gfile = g_file_new_for_path(resolved);
    info = g_file_query_info(gfile,
        G_FILE_ATTRIBUTE_STANDARD_TYPE,
        G_FILE_QUERY_INFO_NONE, ((void*)0), ((void*)0));
    if (info != ((void*)0))
    {
        if (g_file_info_get_file_type(info) == G_FILE_TYPE_SPECIAL)
        {



            ud->current_dvd_device = resolved;
        }
        else
        {
            g_free(resolved);
        }
        g_object_unref(info);
    }
    else
    {
        g_free(resolved);
    }
    g_object_unref(gfile);
}
