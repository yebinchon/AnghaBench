
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_t ;
typedef int const hb_dict_t ;
struct TYPE_3__ {int short_name; } ;
typedef TYPE_1__ hb_container_t ;


 int HB_MUX_MASK_MP4 ;
 int HB_VALUE_TYPE_BOOL ;
 scalar_t__ HB_VALUE_TYPE_STRING ;
 int free (char*) ;
 int hb_container_get_from_extension (int ) ;
 TYPE_1__* hb_container_get_from_format (int) ;
 int hb_container_get_from_name (int ) ;
 void* hb_dict_get (int const*,char*) ;
 int const* hb_dict_init () ;
 int hb_dict_set (int const*,char*,int const*) ;
 int hb_error (char*,char*) ;
 int hb_value_get_int (int *) ;
 int hb_value_get_string (int *) ;
 char* hb_value_get_string_xform (int *) ;
 int const* hb_value_string (int ) ;
 scalar_t__ hb_value_type (int *) ;
 int const* hb_value_xform (void*,int ) ;

int hb_preset_apply_mux(const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_value_t *mux_value = hb_dict_get(preset, "FileFormat");
    int mux;
    if (hb_value_type(mux_value) == HB_VALUE_TYPE_STRING)
    {
        mux = hb_container_get_from_name(hb_value_get_string(mux_value));
        if (mux == 0)
            mux = hb_container_get_from_extension(
                                            hb_value_get_string(mux_value));
    }
    else
    {
        mux = hb_value_get_int(mux_value);
    }
    hb_container_t *container = hb_container_get_from_format(mux);
    if (container == ((void*)0))
    {
        char *str = hb_value_get_string_xform(mux_value);
        hb_error("Invalid container (%s)", str);
        free(str);
        return -1;
    }

    hb_dict_t *dest_dict = hb_dict_get(job_dict, "Destination");
    hb_dict_set(dest_dict, "Mux", hb_value_string(container->short_name));

    hb_dict_set(dest_dict, "AlignAVStart",
                hb_value_xform(hb_dict_get(preset, "AlignAVStart"),
                               HB_VALUE_TYPE_BOOL));
    hb_dict_set(dest_dict, "InlineParameterSets",
                hb_value_xform(hb_dict_get(preset, "InlineParameterSets"),
                               HB_VALUE_TYPE_BOOL));
    if (mux & HB_MUX_MASK_MP4)
    {
        hb_dict_t *mp4_dict = hb_dict_init();
        hb_dict_set(mp4_dict, "Mp4Optimize",
                    hb_value_xform(hb_dict_get(preset, "Mp4HttpOptimize"),
                                   HB_VALUE_TYPE_BOOL));
        hb_dict_set(mp4_dict, "IpodAtom",
                    hb_value_xform(hb_dict_get(preset, "Mp4iPodCompatible"),
                                   HB_VALUE_TYPE_BOOL));
        hb_dict_set(dest_dict, "Mp4Options", mp4_dict);
    }

    return 0;
}
