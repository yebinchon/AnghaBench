
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ui_geo ;
struct TYPE_16__ {int text; } ;
typedef TYPE_4__ json_error_t ;
struct TYPE_15__ {int den; int num; } ;
struct TYPE_17__ {TYPE_3__ par; int height; int width; } ;
typedef TYPE_5__ hb_geometry_t ;
struct TYPE_13__ {int den; int num; } ;
struct TYPE_14__ {TYPE_1__ par; int height; int width; } ;
struct TYPE_18__ {int * crop; int maxHeight; int maxWidth; int modulus; int itu_par; int keep; int mode; TYPE_2__ geometry; } ;
typedef TYPE_6__ hb_geometry_settings_t ;
typedef int hb_dict_t ;


 int hb_error (char*,int ) ;
 int hb_set_anamorphic_size2 (TYPE_5__*,TYPE_6__*,TYPE_5__*) ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int hb_value_int (int ) ;
 int * hb_value_json (char const*) ;
 int * json_pack_ex (TYPE_4__*,int ,char*,char*,int ,char*,int ,char*,char*,int ,char*,int ) ;
 int json_unpack_ex (int *,TYPE_4__*,int ,char*,char*,char*,int ,char*,int ,char*,char*,int ,char*,int ,char*,char*,char*,int ,char*,int ,char*,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,int ,int ,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 int unpack_b (int *) ;
 int unpack_i (int *) ;

char* hb_set_anamorphic_size_json(const char * json_param)
{
    int json_result;
    json_error_t error;
    hb_dict_t * dict;
    hb_geometry_t geo_result;
    hb_geometry_t src;
    hb_geometry_settings_t ui_geo;


    memset(&ui_geo, 0, sizeof(ui_geo));

    dict = hb_value_json(json_param);
    json_result = json_unpack_ex(dict, &error, 0,
    "{"


    "s:{s:i, s:i, s:{s:i, s:i}},"

    "s:{"

    "s:{s:i, s:i, s:{s:i, s:i}},"

    "s:i, s?i, s?b, s:i, s:i, s:i,"

    "s?[iiii]"
    "  }"
    "}",
    "SourceGeometry",
        "Width", unpack_i(&src.width),
        "Height", unpack_i(&src.height),
        "PAR",
            "Num", unpack_i(&src.par.num),
            "Den", unpack_i(&src.par.den),
    "DestSettings",
        "Geometry",
            "Width", unpack_i(&ui_geo.geometry.width),
            "Height", unpack_i(&ui_geo.geometry.height),
            "PAR",
                "Num", unpack_i(&ui_geo.geometry.par.num),
                "Den", unpack_i(&ui_geo.geometry.par.den),
        "AnamorphicMode", unpack_i(&ui_geo.mode),
        "Keep", unpack_i(&ui_geo.keep),
        "ItuPAR", unpack_b(&ui_geo.itu_par),
        "Modulus", unpack_i(&ui_geo.modulus),
        "MaxWidth", unpack_i(&ui_geo.maxWidth),
        "MaxHeight", unpack_i(&ui_geo.maxHeight),
        "Crop", unpack_i(&ui_geo.crop[0]),
                                unpack_i(&ui_geo.crop[1]),
                                unpack_i(&ui_geo.crop[2]),
                                unpack_i(&ui_geo.crop[3])
    );
    hb_value_free(&dict);

    if (json_result < 0)
    {
        hb_error("json unpack failure: %s", error.text);
        return ((void*)0);
    }

    hb_set_anamorphic_size2(&src, &ui_geo, &geo_result);

    dict = json_pack_ex(&error, 0,
        "{s:o, s:o, s:{s:o, s:o}}",
            "Width", hb_value_int(geo_result.width),
            "Height", hb_value_int(geo_result.height),
            "PAR",
                "Num", hb_value_int(geo_result.par.num),
                "Den", hb_value_int(geo_result.par.den));
    if (dict == ((void*)0))
    {
        hb_error("hb_set_anamorphic_size_json: pack failure: %s", error.text);
        return ((void*)0);
    }
    char *result = hb_value_get_json(dict);
    hb_value_free(&dict);

    return result;
}
