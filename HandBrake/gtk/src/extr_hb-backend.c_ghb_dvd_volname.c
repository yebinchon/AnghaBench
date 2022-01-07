
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gchar ;


 scalar_t__* g_strdup (scalar_t__*) ;
 int ghb_dvd_sanitize_volname (scalar_t__*) ;
 scalar_t__* hb_dvd_name (scalar_t__*) ;

gchar*
ghb_dvd_volname(const gchar *device)
{
    gchar *name;
    name = hb_dvd_name((gchar*)device);
    if (name != ((void*)0) && name[0] != 0)
    {
        name = g_strdup(name);
        ghb_dvd_sanitize_volname(name);
        return name;
    }
    return ((void*)0);
}
