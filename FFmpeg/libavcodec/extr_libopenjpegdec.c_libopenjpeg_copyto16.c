
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned int uint16_t ;
struct TYPE_11__ {int numcomps; TYPE_2__* comps; } ;
typedef TYPE_3__ opj_image_t ;
struct TYPE_13__ {int* linesize; scalar_t__* data; int format; } ;
struct TYPE_12__ {TYPE_1__* comp; } ;
struct TYPE_10__ {int prec; int* data; int h; int w; int sgnd; } ;
struct TYPE_9__ {int shift; scalar_t__ depth; } ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFrame ;


 int FFMAX (int ,int ) ;
 int FFMIN (scalar_t__,int) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static inline void libopenjpeg_copyto16(AVFrame *picture, opj_image_t *image) {
    int *comp_data;
    uint16_t *img_ptr;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(picture->format);
    int index, x, y;
    int adjust[4];
    for (x = 0; x < image->numcomps; x++)
        adjust[x] = FFMAX(FFMIN(desc->comp[x].depth - image->comps[x].prec, 8), 0) + desc->comp[x].shift;

    for (index = 0; index < image->numcomps; index++) {
        comp_data = image->comps[index].data;
        for (y = 0; y < image->comps[index].h; y++) {
            img_ptr = (uint16_t *)(picture->data[index] + y * picture->linesize[index]);
            for (x = 0; x < image->comps[index].w; x++) {
                *img_ptr = (1 << image->comps[index].prec - 1) * image->comps[index].sgnd +
                           (unsigned)*comp_data << adjust[index];
                img_ptr++;
                comp_data++;
            }
        }
    }
}
