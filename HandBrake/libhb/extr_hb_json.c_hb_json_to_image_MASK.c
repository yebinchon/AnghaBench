#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_2__ json_error_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_9__ {TYPE_1__* plane; } ;
typedef  TYPE_3__ hb_image_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (char const**) ; 

hb_image_t* FUNC13(char *json_image)
{
    int json_result;
    json_error_t error;
    hb_dict_t * dict;
    int pix_fmt, width, height;
    dict = FUNC6(json_image);
    json_result = FUNC8(dict, &error, 0,
        "{"
        // Format, Width, Height
        "s:i, s:i, s:i,"
        "}",
        "Format",                   FUNC10(&pix_fmt),
        "Width",                    FUNC10(&width),
        "Height",                   FUNC9(&height)
    );
    if (json_result < 0)
    {
        FUNC1("image: json unpack failure: %s", error.text);
        FUNC5(&dict);
        return NULL;
    }

    hb_image_t *image = FUNC2(pix_fmt, width, height);
    if (image == NULL)
    {
        FUNC5(&dict);
        return NULL;
    }

    hb_value_array_t * planes = NULL;
    json_result = FUNC8(dict, &error, 0,
                                 "{s:o}", "Planes", FUNC11(&planes));
    if (json_result < 0)
    {
        FUNC1("image::planes: json unpack failure: %s", error.text);
        FUNC5(&dict);
        return image;
    }
    if (FUNC7(planes) == HB_VALUE_TYPE_ARRAY)
    {
        int ii, count;
        hb_dict_t *plane_dict;
        count = FUNC4(planes);
        for (ii = 0; ii < count; ii++)
        {
            plane_dict = FUNC3(planes, ii);
            const char *data = NULL;
            int size;
            json_result = FUNC8(plane_dict, &error, 0,
                                         "{s:i, s:s}",
                                         "Size", FUNC10(&size),
                                         "Data", FUNC12(&data));
            if (json_result < 0)
            {
                FUNC1("image::plane::data: json unpack failure: %s", error.text);
                FUNC5(&dict);
                return image;
            }
            if (image->plane[ii].size > 0 && data != NULL)
            {
                FUNC0(image->plane[ii].data, data,
                                 image->plane[ii].size);
            }
        }
    }
    FUNC5(&dict);

    return image;
}