
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint64 ;
typedef int gint64 ;
typedef int gchar ;
typedef int GhbValue ;
typedef int GFileInfo ;
typedef int GFile ;


 int G_FILE_ATTRIBUTE_FILESYSTEM_FREE ;
 int g_file_info_get_attribute_uint64 (int *,int ) ;
 scalar_t__ g_file_info_has_attribute (int *,int ) ;
 int * g_file_new_for_path (int *) ;
 int * g_file_query_filesystem_info (int *,int ,int *,int *) ;
 int g_free (int *) ;
 int g_object_unref (int *) ;
 int * g_path_get_dirname (int const*) ;
 int * ghb_dict_get_string (int *,char*) ;
 int * ghb_resolve_symlink (int *) ;

gint64
ghb_dest_free_space(GhbValue *settings)
{
    GFile *gfile;
    GFileInfo *info;
    guint64 size = -1;
    const gchar *dest = ghb_dict_get_string(settings, "destination");
    gchar *destdir = g_path_get_dirname(dest);
    gchar *resolved = ghb_resolve_symlink(destdir);

    gfile = g_file_new_for_path(resolved);
    info = g_file_query_filesystem_info(gfile,
                                G_FILE_ATTRIBUTE_FILESYSTEM_FREE, ((void*)0), ((void*)0));
    if (info != ((void*)0))
    {
        if (g_file_info_has_attribute(info, G_FILE_ATTRIBUTE_FILESYSTEM_FREE))
        {
            size = g_file_info_get_attribute_uint64(info,
                                    G_FILE_ATTRIBUTE_FILESYSTEM_FREE);
        }
        g_object_unref(info);
    }
    g_object_unref(gfile);
    g_free(resolved);
    g_free(destdir);

    return size;
}
