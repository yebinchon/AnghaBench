
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int text; } ;
typedef TYPE_2__ json_error_t ;
typedef int hb_value_array_t ;
struct TYPE_9__ {TYPE_1__* plane; } ;
typedef TYPE_3__ hb_image_t ;
typedef int hb_dict_t ;
struct TYPE_7__ {int size; int data; } ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 int av_base64_decode (int ,char const*,int ) ;
 int hb_error (char*,int ) ;
 TYPE_3__* hb_image_init (int,int,int) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_free (int **) ;
 int * hb_value_json (char*) ;
 scalar_t__ hb_value_type (int *) ;
 int json_unpack_ex (int *,TYPE_2__*,int ,char*,char*,int ,...) ;
 int unpack_b (int*) ;
 int unpack_i (int*) ;
 int unpack_o (int **) ;
 int unpack_s (char const**) ;

hb_image_t* hb_json_to_image(char *json_image)
{
    int json_result;
    json_error_t error;
    hb_dict_t * dict;
    int pix_fmt, width, height;
    dict = hb_value_json(json_image);
    json_result = json_unpack_ex(dict, &error, 0,
        "{"

        "s:i, s:i, s:i,"
        "}",
        "Format", unpack_i(&pix_fmt),
        "Width", unpack_i(&width),
        "Height", unpack_b(&height)
    );
    if (json_result < 0)
    {
        hb_error("image: json unpack failure: %s", error.text);
        hb_value_free(&dict);
        return ((void*)0);
    }

    hb_image_t *image = hb_image_init(pix_fmt, width, height);
    if (image == ((void*)0))
    {
        hb_value_free(&dict);
        return ((void*)0);
    }

    hb_value_array_t * planes = ((void*)0);
    json_result = json_unpack_ex(dict, &error, 0,
                                 "{s:o}", "Planes", unpack_o(&planes));
    if (json_result < 0)
    {
        hb_error("image::planes: json unpack failure: %s", error.text);
        hb_value_free(&dict);
        return image;
    }
    if (hb_value_type(planes) == HB_VALUE_TYPE_ARRAY)
    {
        int ii, count;
        hb_dict_t *plane_dict;
        count = hb_value_array_len(planes);
        for (ii = 0; ii < count; ii++)
        {
            plane_dict = hb_value_array_get(planes, ii);
            const char *data = ((void*)0);
            int size;
            json_result = json_unpack_ex(plane_dict, &error, 0,
                                         "{s:i, s:s}",
                                         "Size", unpack_i(&size),
                                         "Data", unpack_s(&data));
            if (json_result < 0)
            {
                hb_error("image::plane::data: json unpack failure: %s", error.text);
                hb_value_free(&dict);
                return image;
            }
            if (image->plane[ii].size > 0 && data != ((void*)0))
            {
                av_base64_decode(image->plane[ii].data, data,
                                 image->plane[ii].size);
            }
        }
    }
    hb_value_free(&dict);

    return image;
}
