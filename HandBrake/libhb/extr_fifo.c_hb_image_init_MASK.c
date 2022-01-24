#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {int max_plane; int* data; int format; int width; int height; TYPE_2__* plane; } ;
typedef  TYPE_3__ hb_image_t ;
struct TYPE_12__ {int nb_components; TYPE_1__* comp; } ;
struct TYPE_10__ {int* data; int stride; int height_stride; int size; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_9__ {int plane; } ;
typedef  TYPE_4__ AVPixFmtDescriptor ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int FUNC5 (int,int,int) ; 
 int FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 

hb_image_t * FUNC9(int pix_fmt, int width, int height)
{
    const AVPixFmtDescriptor * desc = FUNC1(pix_fmt);
    uint8_t                    has_plane[4] = {0,};
    int                        ii, pp;

    if (desc == NULL)
    {
        return NULL;
    }

    hb_image_t *image = FUNC2(1, sizeof(hb_image_t));
    if (image == NULL)
    {
        return NULL;
    }

    int size = 0;
    for (ii = 0; ii < desc->nb_components; ii++)
    {
        // For non-planar formats, comp[ii].plane can contain the
        // same value for multiple comp.
        pp = desc->comp[ii].plane;
        if (pp > image->max_plane)
        {
            image->max_plane = pp;
        }
        if (!has_plane[pp])
        {
            has_plane[pp] = 1;
            size += FUNC6( pix_fmt, width, pp ) *
                    FUNC5( pix_fmt, height, pp );
        }
    }

    image->data  = FUNC0(size);
    if (image->data == NULL)
    {
        FUNC3(image);
        return NULL;
    }
    image->format = pix_fmt;
    image->width = width;
    image->height = height;
    FUNC8(image->data, 0, size);

    uint8_t * data = image->data;
    for (pp = 0; pp <= image->max_plane; pp++)
    {
        image->plane[pp].data   = data;
        image->plane[pp].stride = FUNC6(pix_fmt, width, pp);
        image->plane[pp].height_stride =
                                FUNC5(pix_fmt, height, pp);
        image->plane[pp].width  = FUNC7(pix_fmt, width, pp);
        image->plane[pp].height = FUNC4(pix_fmt, height, pp);
        image->plane[pp].size   = image->plane[pp].stride *
                                  image->plane[pp].height_stride;
        data                   += image->plane[pp].size;
    }
    return image;
}