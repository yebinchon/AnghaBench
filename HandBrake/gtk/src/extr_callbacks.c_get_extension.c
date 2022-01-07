
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int prefs; } ;
typedef TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {int format; char const* default_extension; } ;
typedef TYPE_2__ hb_container_t ;
typedef char gchar ;
typedef int GhbValue ;


 int HB_MUX_MASK_MP4 ;
 scalar_t__ ghb_dict_get_bool (int ,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 TYPE_2__* ghb_lookup_container_by_name (char const*) ;

__attribute__((used)) static const gchar*
get_extension(signal_user_data_t *ud, GhbValue *settings)
{
    const char *mux_id;
    const hb_container_t *mux;

    mux_id = ghb_dict_get_string(settings, "FileFormat");
    mux = ghb_lookup_container_by_name(mux_id);

    if ((mux->format & HB_MUX_MASK_MP4) &&
        ghb_dict_get_bool(ud->prefs, "UseM4v"))
    {
        return "m4v";
    }
    return mux->default_extension;
}
