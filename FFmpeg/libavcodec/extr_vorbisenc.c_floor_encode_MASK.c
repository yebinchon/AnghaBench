#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {int subclass; size_t masterbook; int dim; int* books; } ;
typedef  TYPE_1__ vorbis_enc_floor_class ;
struct TYPE_16__ {int multiplier; int values; int partitions; size_t* partition_to_class; TYPE_13__* list; TYPE_1__* classes; } ;
typedef  TYPE_2__ vorbis_enc_floor ;
struct TYPE_17__ {TYPE_4__* codebooks; } ;
typedef  TYPE_3__ vorbis_enc_context ;
struct TYPE_18__ {int nentries; } ;
typedef  TYPE_4__ vorbis_enc_codebook ;
typedef  int uint16_t ;
struct TYPE_19__ {int size_in_bits; } ;
struct TYPE_14__ {size_t low; size_t high; int /*<<< orphan*/  x; } ;
typedef  TYPE_5__ PutBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 int MAX_FLOOR_VALUES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int,int*,int*,int,float*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int) ; 
 int FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_4__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(vorbis_enc_context *venc, vorbis_enc_floor *fc,
                        PutBitContext *pb, uint16_t *posts,
                        float *floor, int samples)
{
    int range = 255 / fc->multiplier + 1;
    int coded[MAX_FLOOR_VALUES]; // first 2 values are unused
    int i, counter;

    if (pb->size_in_bits - FUNC6(pb) < 1 + 2 * FUNC4(range - 1))
        return FUNC0(EINVAL);
    FUNC5(pb, 1, 1); // non zero
    FUNC5(pb, FUNC4(range - 1), posts[0]);
    FUNC5(pb, FUNC4(range - 1), posts[1]);
    coded[0] = coded[1] = 1;

    for (i = 2; i < fc->values; i++) {
        int predicted = FUNC8(fc->list[fc->list[i].low].x,
                                     posts[fc->list[i].low],
                                     fc->list[fc->list[i].high].x,
                                     posts[fc->list[i].high],
                                     fc->list[i].x);
        int highroom = range - predicted;
        int lowroom = predicted;
        int room = FUNC1(highroom, lowroom);
        if (predicted == posts[i]) {
            coded[i] = 0; // must be used later as flag!
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
                    // coded could be -1, but this still works, cause that is 0
                    if (coded[counter + k] < maxval)
                        break;
                }
                FUNC2(l != csub);
                cval   |= l << cshift;
                cshift += c->subclass;
            }
            if (FUNC7(pb, book, cval))
                return FUNC0(EINVAL);
        }
        for (k = 0; k < c->dim; k++) {
            int book  = c->books[cval & (csub-1)];
            int entry = coded[counter++];
            cval >>= c->subclass;
            if (book == -1)
                continue;
            if (entry == -1)
                entry = 0;
            if (FUNC7(pb, &venc->codebooks[book], entry))
                return FUNC0(EINVAL);
        }
    }

    FUNC3(fc->list, fc->values, posts, coded,
                                 fc->multiplier, floor, samples);

    return 0;
}