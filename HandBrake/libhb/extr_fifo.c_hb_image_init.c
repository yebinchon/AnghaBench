
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int max_plane; int* data; int format; int width; int height; TYPE_2__* plane; } ;
typedef TYPE_3__ hb_image_t ;
struct TYPE_12__ {int nb_components; TYPE_1__* comp; } ;
struct TYPE_10__ {int* data; int stride; int height_stride; int size; int height; int width; } ;
struct TYPE_9__ {int plane; } ;
typedef TYPE_4__ AVPixFmtDescriptor ;


 int* av_malloc (int) ;
 TYPE_4__* av_pix_fmt_desc_get (int) ;
 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int hb_image_height (int,int,int) ;
 int hb_image_height_stride (int,int,int) ;
 int hb_image_stride (int,int,int) ;
 int hb_image_width (int,int,int) ;
 int memset (int*,int ,int) ;

hb_image_t * hb_image_init(int pix_fmt, int width, int height)
{
    const AVPixFmtDescriptor * desc = av_pix_fmt_desc_get(pix_fmt);
    uint8_t has_plane[4] = {0,};
    int ii, pp;

    if (desc == ((void*)0))
    {
        return ((void*)0);
    }

    hb_image_t *image = calloc(1, sizeof(hb_image_t));
    if (image == ((void*)0))
    {
        return ((void*)0);
    }

    int size = 0;
    for (ii = 0; ii < desc->nb_components; ii++)
    {


        pp = desc->comp[ii].plane;
        if (pp > image->max_plane)
        {
            image->max_plane = pp;
        }
        if (!has_plane[pp])
        {
            has_plane[pp] = 1;
            size += hb_image_stride( pix_fmt, width, pp ) *
                    hb_image_height_stride( pix_fmt, height, pp );
        }
    }

    image->data = av_malloc(size);
    if (image->data == ((void*)0))
    {
        free(image);
        return ((void*)0);
    }
    image->format = pix_fmt;
    image->width = width;
    image->height = height;
    memset(image->data, 0, size);

    uint8_t * data = image->data;
    for (pp = 0; pp <= image->max_plane; pp++)
    {
        image->plane[pp].data = data;
        image->plane[pp].stride = hb_image_stride(pix_fmt, width, pp);
        image->plane[pp].height_stride =
                                hb_image_height_stride(pix_fmt, height, pp);
        image->plane[pp].width = hb_image_width(pix_fmt, width, pp);
        image->plane[pp].height = hb_image_height(pix_fmt, height, pp);
        image->plane[pp].size = image->plane[pp].stride *
                                  image->plane[pp].height_stride;
        data += image->plane[pp].size;
    }
    return image;
}
