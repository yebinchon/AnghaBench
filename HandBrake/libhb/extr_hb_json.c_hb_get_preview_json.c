
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


typedef int settings ;
struct TYPE_16__ {int text; } ;
typedef TYPE_4__ json_error_t ;
typedef int hb_value_array_t ;
struct TYPE_17__ {int format; int width; int height; TYPE_3__* plane; } ;
typedef TYPE_5__ hb_image_t ;
typedef int hb_handle_t ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_14__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_18__ {int mode; int keep; int itu_par; int modulus; int maxWidth; int maxHeight; int* crop; TYPE_2__ geometry; } ;
typedef TYPE_6__ hb_geometry_settings_t ;
typedef int hb_dict_t ;
struct TYPE_15__ {int width; int height; int stride; int height_stride; int size; int data; } ;


 int AV_BASE64_SIZE (int ) ;
 int av_base64_encode (char*,int,int ,int ) ;
 char* calloc (int,int) ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_error (char*,int ) ;
 TYPE_5__* hb_get_preview2 (int *,int,int,TYPE_6__*,int) ;
 int hb_image_close (TYPE_5__**) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_array_init () ;
 int hb_value_free (int **) ;
 char* hb_value_get_json (int *) ;
 int hb_value_int (int) ;
 int * hb_value_json (char const*) ;
 int hb_value_string (char*) ;
 int * json_pack_ex (TYPE_4__*,int ,char*,char*,int ,char*,int ,char*,int ,...) ;
 int json_unpack_ex (int *,TYPE_4__*,int ,char*,char*,int ,char*,int ,char*,int ,char*,char*,char*,int ,char*,int ,char*,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,char*,int ,int ,int ,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 int strlen (char*) ;
 int unpack_b (int*) ;
 int unpack_i (int*) ;

char* hb_get_preview_json(hb_handle_t * h, const char *json_param)
{
    hb_image_t *image;
    int ii, title_idx, preview_idx, deinterlace = 0;

    int json_result;
    json_error_t error;
    hb_dict_t * dict;
    hb_geometry_settings_t settings;


    memset(&settings, 0, sizeof(settings));

    dict = hb_value_json(json_param);
    json_result = json_unpack_ex(dict, &error, 0,
    "{"

    "s:i, s:i, s?b,"

    "s:{"

    "s:{s:i, s:i, s:{s:i, s:i}},"

    "s:i, s?i, s?b, s:i, s:i, s:i,"

    "s?[iiii]"
    "  }"
    "}",
    "Title", unpack_i(&title_idx),
    "Preview", unpack_i(&preview_idx),
    "Deinterlace", unpack_b(&deinterlace),
    "DestSettings",
        "Geometry",
            "Width", unpack_i(&settings.geometry.width),
            "Height", unpack_i(&settings.geometry.height),
            "PAR",
                "Num", unpack_i(&settings.geometry.par.num),
                "Den", unpack_i(&settings.geometry.par.den),
        "AnamorphicMode", unpack_i(&settings.mode),
        "Keep", unpack_i(&settings.keep),
        "ItuPAR", unpack_b(&settings.itu_par),
        "Modulus", unpack_i(&settings.modulus),
        "MaxWidth", unpack_i(&settings.maxWidth),
        "MaxHeight", unpack_i(&settings.maxHeight),
        "Crop", unpack_i(&settings.crop[0]),
                                unpack_i(&settings.crop[1]),
                                unpack_i(&settings.crop[2]),
                                unpack_i(&settings.crop[3])
    );
    hb_value_free(&dict);

    if (json_result < 0)
    {
        hb_error("preview params: json unpack failure: %s", error.text);
        return ((void*)0);
    }

    image = hb_get_preview2(h, title_idx, preview_idx, &settings, deinterlace);
    if (image == ((void*)0))
    {
        return ((void*)0);
    }

    dict = json_pack_ex(&error, 0,
        "{s:o, s:o, s:o}",
            "Format", hb_value_int(image->format),
            "Width", hb_value_int(image->width),
            "Height", hb_value_int(image->height));
    if (dict == ((void*)0))
    {
        hb_error("hb_get_preview_json: pack failure: %s", error.text);
        return ((void*)0);
    }

    hb_value_array_t * planes = hb_value_array_init();
    for (ii = 0; ii < 4; ii++)
    {
        int base64size = AV_BASE64_SIZE(image->plane[ii].size);
        if (image->plane[ii].size <= 0 || base64size <= 0)
            continue;

        char *plane_base64 = calloc(base64size, 1);
        av_base64_encode(plane_base64, base64size,
                         image->plane[ii].data, image->plane[ii].size);

        base64size = strlen(plane_base64);
        hb_dict_t *plane_dict;
        plane_dict = json_pack_ex(&error, 0,
            "{s:o, s:o, s:o, s:o, s:o, s:o}",
            "Width", hb_value_int(image->plane[ii].width),
            "Height", hb_value_int(image->plane[ii].height),
            "Stride", hb_value_int(image->plane[ii].stride),
            "HeightStride", hb_value_int(image->plane[ii].height_stride),
            "Size", hb_value_int(base64size),
            "Data", hb_value_string(plane_base64)
        );
        if (plane_dict == ((void*)0))
        {
            hb_error("plane_dict: json pack failure: %s", error.text);
            return ((void*)0);
        }
        hb_value_array_append(planes, plane_dict);
    }
    hb_dict_set(dict, "Planes", planes);
    hb_image_close(&image);

    char *result = hb_value_get_json(dict);
    hb_value_free(&dict);

    return result;
}
