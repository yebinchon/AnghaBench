
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* name; scalar_t__ type; int path; } ;
typedef TYPE_1__ hb_title_t ;
typedef char gchar ;
struct TYPE_6__ {int st_mode; } ;
typedef TYPE_2__ GStatBuf ;


 scalar_t__ HB_DVD_TYPE ;
 int S_ISBLK (int ) ;
 int _ (char*) ;
 int camel_convert (char*) ;
 scalar_t__ g_stat (int ,TYPE_2__*) ;
 char* g_strdup (int ) ;
 char* get_file_label (int ) ;
 int ghb_dvd_sanitize_volname (char*) ;
 char* strdup (scalar_t__*) ;
 scalar_t__ uppers_and_unders (char*) ;

gchar*
ghb_create_volume_label(const hb_title_t * title)
{
    char * volname = ((void*)0);

    if (title != ((void*)0) && title->name != ((void*)0) && title->name[0] != 0)
    {
        GStatBuf stat_buf;

        if (g_stat(title->path, &stat_buf) == 0)
        {
            if (!S_ISBLK(stat_buf.st_mode))
            {
                volname = get_file_label(title->path);
            }
            else
            {

                volname = strdup(title->name);
                if (title->type == HB_DVD_TYPE)
                {
                    ghb_dvd_sanitize_volname(volname);
                }
                if (uppers_and_unders(volname))
                {
                    camel_convert(volname);
                }
            }
        }
        if (volname == ((void*)0))
        {
            volname = strdup(title->name);
            if (title->type == HB_DVD_TYPE)
            {
                ghb_dvd_sanitize_volname(volname);
            }
        }
    }
    else
    {
        volname = g_strdup(_("No Title Found"));
    }
    return volname;
}
