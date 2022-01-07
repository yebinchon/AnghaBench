
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int* data; } ;
struct TYPE_6__ {int nb_units; int* data; size_t data_size; TYPE_1__* units; TYPE_4__* data_ref; } ;
struct TYPE_5__ {int data_size; int type; int* data; } ;
typedef TYPE_1__ CodedBitstreamUnit ;
typedef TYPE_2__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 size_t AV_RB16 (int*) ;
 int ENOMEM ;
 int JPEG_MARKER_EOI ;
 int JPEG_MARKER_SOI ;
 int JPEG_MARKER_SOS ;
 int av_assert0 (int) ;
 TYPE_4__* av_buffer_alloc (scalar_t__) ;
 int memcpy (int*,int*,size_t) ;
 int memset (int*,int ,scalar_t__) ;

__attribute__((used)) static int cbs_jpeg_assemble_fragment(CodedBitstreamContext *ctx,
                                       CodedBitstreamFragment *frag)
{
    const CodedBitstreamUnit *unit;
    uint8_t *data;
    size_t size, dp, sp;
    int i;

    size = 4;
    for (i = 0; i < frag->nb_units; i++) {
        unit = &frag->units[i];
        size += 2 + unit->data_size;
        if (unit->type == JPEG_MARKER_SOS) {
            for (sp = 0; sp < unit->data_size; sp++) {
                if (unit->data[sp] == 0xff)
                    ++size;
            }
        }
    }

    frag->data_ref = av_buffer_alloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!frag->data_ref)
        return AVERROR(ENOMEM);
    data = frag->data_ref->data;

    dp = 0;

    data[dp++] = 0xff;
    data[dp++] = JPEG_MARKER_SOI;

    for (i = 0; i < frag->nb_units; i++) {
        unit = &frag->units[i];

        data[dp++] = 0xff;
        data[dp++] = unit->type;

        if (unit->type != JPEG_MARKER_SOS) {
            memcpy(data + dp, unit->data, unit->data_size);
            dp += unit->data_size;
        } else {
            sp = AV_RB16(unit->data);
            av_assert0(sp <= unit->data_size);
            memcpy(data + dp, unit->data, sp);
            dp += sp;

            for (; sp < unit->data_size; sp++) {
                if (unit->data[sp] == 0xff) {
                    data[dp++] = 0xff;
                    data[dp++] = 0x00;
                } else {
                    data[dp++] = unit->data[sp];
                }
            }
        }
    }

    data[dp++] = 0xff;
    data[dp++] = JPEG_MARKER_EOI;

    av_assert0(dp == size);

    memset(data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    frag->data = data;
    frag->data_size = size;

    return 0;
}
