
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* reorder_pixels ) (int ,int ,int) ;int (* predictor ) (int ,int) ;} ;
struct TYPE_8__ {TYPE_1__ dsp; } ;
struct TYPE_7__ {int tmp; int uncompressed_data; } ;
typedef TYPE_2__ EXRThreadData ;
typedef TYPE_3__ EXRContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ Z_OK ;
 int av_assert1 (int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int ,int) ;
 scalar_t__ uncompress (int ,unsigned long*,int const*,int) ;

__attribute__((used)) static int zip_uncompress(EXRContext *s, const uint8_t *src, int compressed_size,
                          int uncompressed_size, EXRThreadData *td)
{
    unsigned long dest_len = uncompressed_size;

    if (uncompress(td->tmp, &dest_len, src, compressed_size) != Z_OK ||
        dest_len != uncompressed_size)
        return AVERROR_INVALIDDATA;

    av_assert1(uncompressed_size % 2 == 0);

    s->dsp.predictor(td->tmp, uncompressed_size);
    s->dsp.reorder_pixels(td->uncompressed_data, td->tmp, uncompressed_size);

    return 0;
}
