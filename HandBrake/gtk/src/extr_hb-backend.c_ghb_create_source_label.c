
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* name; scalar_t__ type; int playlist; } ;
typedef TYPE_1__ hb_title_t ;
typedef char gchar ;


 scalar_t__ HB_BD_TYPE ;
 scalar_t__ HB_DVD_TYPE ;
 int _ (char*) ;
 int g_free (char*) ;
 char* g_strdup (int ) ;
 char* g_strdup_printf (int ,char*,int ) ;
 int ghb_dvd_sanitize_volname (char*) ;
 char* strdup (scalar_t__*) ;

gchar*
ghb_create_source_label(const hb_title_t * title)
{
    char * volname;
    char * source;

    if (title != ((void*)0) && title->name != ((void*)0) && title->name[0] != 0)
    {
        volname = strdup(title->name);
        if (title->type == HB_DVD_TYPE)
        {
            ghb_dvd_sanitize_volname(volname);
        }
        if (title->type == HB_BD_TYPE)
        {
            source = g_strdup_printf(_("%s - (%05d.MPLS)"),
                                     volname, title->playlist);
            g_free(volname);
        }
        else
        {
            source = volname;
        }
    }
    else
    {
        source = g_strdup(_("No Title Found"));
    }
    return source;
}
