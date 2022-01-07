
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {int subclass; size_t masterbook; int dim; int* books; } ;
typedef TYPE_1__ vorbis_enc_floor_class ;
struct TYPE_16__ {int multiplier; int values; int partitions; size_t* partition_to_class; TYPE_13__* list; TYPE_1__* classes; } ;
typedef TYPE_2__ vorbis_enc_floor ;
struct TYPE_17__ {TYPE_4__* codebooks; } ;
typedef TYPE_3__ vorbis_enc_context ;
struct TYPE_18__ {int nentries; } ;
typedef TYPE_4__ vorbis_enc_codebook ;
typedef int uint16_t ;
struct TYPE_19__ {int size_in_bits; } ;
struct TYPE_14__ {size_t low; size_t high; int x; } ;
typedef TYPE_5__ PutBitContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMIN (int,int) ;
 int MAX_FLOOR_VALUES ;
 int assert (int) ;
 int ff_vorbis_floor1_render_list (TYPE_13__*,int,int*,int*,int,float*,int) ;
 int ilog (int) ;
 int put_bits (TYPE_5__*,int,int) ;
 int put_bits_count (TYPE_5__*) ;
 scalar_t__ put_codeword (TYPE_5__*,TYPE_4__*,int) ;
 int render_point (int ,int,int ,int,int ) ;

__attribute__((used)) static int floor_encode(vorbis_enc_context *venc, vorbis_enc_floor *fc,
                        PutBitContext *pb, uint16_t *posts,
                        float *floor, int samples)
{
    int range = 255 / fc->multiplier + 1;
    int coded[MAX_FLOOR_VALUES];
    int i, counter;

    if (pb->size_in_bits - put_bits_count(pb) < 1 + 2 * ilog(range - 1))
        return AVERROR(EINVAL);
    put_bits(pb, 1, 1);
    put_bits(pb, ilog(range - 1), posts[0]);
    put_bits(pb, ilog(range - 1), posts[1]);
    coded[0] = coded[1] = 1;

    for (i = 2; i < fc->values; i++) {
        int predicted = render_point(fc->list[fc->list[i].low].x,
                                     posts[fc->list[i].low],
                                     fc->list[fc->list[i].high].x,
                                     posts[fc->list[i].high],
                                     fc->list[i].x);
        int highroom = range - predicted;
        int lowroom = predicted;
        int room = FFMIN(highroom, lowroom);
        if (predicted == posts[i]) {
            coded[i] = 0;
            continue;
        } else {
            if (!coded[fc->list[i].low ])
                coded[fc->list[i].low ] = -1;
            if (!coded[fc->list[i].high])
                coded[fc->list[i].high] = -1;
        }
        if (posts[i] > predicted) {
            if (posts[i] - predicted > room)
                coded[i] = posts[i] - predicted + lowroom;
            else
                coded[i] = (posts[i] - predicted) << 1;
        } else {
            if (predicted - posts[i] > room)
                coded[i] = predicted - posts[i] + highroom - 1;
            else
                coded[i] = ((predicted - posts[i]) << 1) - 1;
        }
    }

    counter = 2;
    for (i = 0; i < fc->partitions; i++) {
        vorbis_enc_floor_class * c = &fc->classes[fc->partition_to_class[i]];
        int k, cval = 0, csub = 1<<c->subclass;
        if (c->subclass) {
            vorbis_enc_codebook * book = &venc->codebooks[c->masterbook];
            int cshift = 0;
            for (k = 0; k < c->dim; k++) {
                int l;
                for (l = 0; l < csub; l++) {
                    int maxval = 1;
                    if (c->books[l] != -1)
                        maxval = venc->codebooks[c->books[l]].nentries;

                    if (coded[counter + k] < maxval)
                        break;
                }
                assert(l != csub);
                cval |= l << cshift;
                cshift += c->subclass;
            }
            if (put_codeword(pb, book, cval))
                return AVERROR(EINVAL);
        }
        for (k = 0; k < c->dim; k++) {
            int book = c->books[cval & (csub-1)];
            int entry = coded[counter++];
            cval >>= c->subclass;
            if (book == -1)
                continue;
            if (entry == -1)
                entry = 0;
            if (put_codeword(pb, &venc->codebooks[book], entry))
                return AVERROR(EINVAL);
        }
    }

    ff_vorbis_floor1_render_list(fc->list, fc->values, posts, coded,
                                 fc->multiplier, floor, samples);

    return 0;
}
