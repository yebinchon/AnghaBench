
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_3__* plane; int * data; int height; int width; int format; } ;
typedef TYPE_4__ hb_image_t ;
struct TYPE_10__ {int max_plane; int height; int width; int fmt; } ;
struct TYPE_14__ {TYPE_2__* plane; TYPE_1__ f; int size; int data; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_12__ {int size; int height_stride; int stride; int height; int width; int * data; } ;
struct TYPE_11__ {int size; int height_stride; int stride; int height; int width; } ;


 int * av_malloc (int ) ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int memcpy (int *,int ,int ) ;

hb_image_t * hb_buffer_to_image(hb_buffer_t *buf)
{
    hb_image_t *image = calloc(1, sizeof(hb_image_t));

    image->data = av_malloc( buf->size );
    if (image->data == ((void*)0))
    {
        free(image);
        return ((void*)0);
    }

    image->format = buf->f.fmt;
    image->width = buf->f.width;
    image->height = buf->f.height;
    memcpy(image->data, buf->data, buf->size);

    int p;
    uint8_t *data = image->data;
    for (p = 0; p <= buf->f.max_plane; p++)
    {
        image->plane[p].data = data;
        image->plane[p].width = buf->plane[p].width;
        image->plane[p].height = buf->plane[p].height;
        image->plane[p].stride = buf->plane[p].stride;
        image->plane[p].height_stride = buf->plane[p].height_stride;
        image->plane[p].size = buf->plane[p].size;
        data += image->plane[p].size;
    }
    return image;
}
