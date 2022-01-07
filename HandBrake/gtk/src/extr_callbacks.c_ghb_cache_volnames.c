
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int signal_user_data_t ;
typedef int * gpointer ;
typedef int gchar ;
struct TYPE_4__ {struct TYPE_4__* next; int data; } ;
typedef int GSourceFunc ;
typedef TYPE_1__ GList ;


 TYPE_1__* dvd_device_list () ;
 int free_drive (int ) ;
 int g_debug (char*) ;
 int g_drive_has_media (int ) ;
 int g_free (int *) ;
 int g_hash_table_insert (int ,int *,int *) ;
 int g_hash_table_remove_all (int ) ;
 int g_idle_add (int ,int *) ;
 int g_list_free (TYPE_1__*) ;
 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;
 int g_object_unref (int ) ;
 int * get_direct_dvd_volume_name (int *) ;
 int * get_dvd_device_name (int ) ;
 scalar_t__ ghb_file_menu_add_dvd ;
 int volname_hash ;
 int volname_mutex ;

gpointer
ghb_cache_volnames(signal_user_data_t *ud)
{
    GList *link, *drives;

    g_debug("ghb_cache_volnames()");
    link = drives = dvd_device_list();
    if (drives == ((void*)0))
        return ((void*)0);

    g_mutex_lock(volname_mutex);
    g_hash_table_remove_all(volname_hash);
    while (link != ((void*)0))
    {
        gchar *name, *drive;


        if (!g_drive_has_media (link->data))
        {
            g_object_unref(link->data);
            link = link->next;
            continue;
        }

        drive = get_dvd_device_name(link->data);
        name = get_direct_dvd_volume_name(drive);

        if (drive != ((void*)0) && name != ((void*)0))
        {
            g_hash_table_insert(volname_hash, drive, name);
        }
        else
        {
            if (drive != ((void*)0))
                g_free(drive);
            if (name != ((void*)0))
                g_free(name);
        }

        free_drive(link->data);
        link = link->next;
    }
    g_mutex_unlock(volname_mutex);

    g_list_free(drives);

    g_idle_add((GSourceFunc)ghb_file_menu_add_dvd, ud);

    return ((void*)0);
}
