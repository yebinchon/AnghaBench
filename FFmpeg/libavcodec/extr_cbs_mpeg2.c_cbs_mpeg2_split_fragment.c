
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int data_size; int data_ref; int const* data; } ;
typedef int CodedBitstreamUnitType ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 int AVERROR_INVALIDDATA ;
 int * avpriv_find_start_code (int const*,int const*,int*) ;
 int ff_cbs_insert_unit_data (int *,TYPE_1__*,int,int,int *,size_t,int ) ;

__attribute__((used)) static int cbs_mpeg2_split_fragment(CodedBitstreamContext *ctx,
                                    CodedBitstreamFragment *frag,
                                    int header)
{
    const uint8_t *start, *end;
    CodedBitstreamUnitType unit_type;
    uint32_t start_code = -1;
    size_t unit_size;
    int err, i, final = 0;

    start = avpriv_find_start_code(frag->data, frag->data + frag->data_size,
                                   &start_code);
    if (start_code >> 8 != 0x000001) {

        return AVERROR_INVALIDDATA;
    }

    for (i = 0;; i++) {
        unit_type = start_code & 0xff;

        if (start == frag->data + frag->data_size) {




            start_code = 0;
        }

        end = avpriv_find_start_code(start--, frag->data + frag->data_size,
                                     &start_code);





        if (start_code >> 8 == 0x000001) {


            unit_size = (end - 4) - start;
        } else {

           unit_size = end - start;
           final = 1;
        }

        err = ff_cbs_insert_unit_data(ctx, frag, i, unit_type, (uint8_t*)start,
                                      unit_size, frag->data_ref);
        if (err < 0)
            return err;

        if (final)
            break;

        start = end;
    }

    return 0;
}
