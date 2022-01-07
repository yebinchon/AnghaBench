
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_subtitle; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {int source; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef int GhbValue ;


 int IMPORTSRT ;
 int IMPORTSSA ;
 int VOBSUB ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 TYPE_1__* ghb_lookup_title (int,int *) ;
 TYPE_2__* hb_list_item (int ,int) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int get_sub_source(GhbValue *settings, GhbValue *subsettings)
{
    GhbValue *import;

    import = ghb_dict_get(subsettings, "Import");
    if (import != ((void*)0))
    {
        const char * format = ghb_dict_get_string(import, "Format");
        if (format != ((void*)0) && !strcasecmp(format, "SSA"))
        {
            return IMPORTSSA;
        }
        return IMPORTSRT;
    }

    int title_id = ghb_dict_get_int(settings, "title");
    const hb_title_t *title = ghb_lookup_title(title_id, ((void*)0));
    if (title == ((void*)0))
        return VOBSUB;

    GhbValue *val = ghb_dict_get(subsettings, "Track");
    if (val == ((void*)0))
        return VOBSUB;

    int track = ghb_dict_get_int(subsettings, "Track");
    hb_subtitle_t *subtitle = hb_list_item(title->list_subtitle, track);
    if (subtitle != ((void*)0))
        return subtitle->source;

    return VOBSUB;
}
