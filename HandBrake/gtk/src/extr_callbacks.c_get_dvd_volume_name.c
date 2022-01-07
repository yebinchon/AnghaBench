
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gchar ;


 int camel_convert (int *) ;
 int g_free (int *) ;
 int g_hash_table_lookup (int ,int *) ;
 int g_mutex_lock (int ) ;
 int g_mutex_unlock (int ) ;
 int * g_strdup (int ) ;
 int * g_strdup_printf (char*,int *,...) ;
 int * get_dvd_device_name (int ) ;
 scalar_t__ uppers_and_unders (int *) ;
 int volname_hash ;
 int volname_mutex ;

__attribute__((used)) static gchar*
get_dvd_volume_name(gpointer gd)
{
    gchar *label = ((void*)0);
    gchar *result;
    gchar *drive;

    drive = get_dvd_device_name(gd);
    g_mutex_lock(volname_mutex);
    label = g_strdup(g_hash_table_lookup(volname_hash, drive));
    g_mutex_unlock(volname_mutex);
    if (label != ((void*)0))
    {
        if (uppers_and_unders(label))
        {
            camel_convert(label);
        }



        result = g_strdup_printf("%s - %s", drive, label);

        g_free(label);
    }
    else
    {
        result = g_strdup_printf("%s", drive);
    }
    g_free(drive);
    return result;
}
