
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int next_index; int rung; } ;
typedef TYPE_1__ uint8_t ;
typedef size_t ptrdiff_t ;
struct TYPE_13__ {scalar_t__ err; } ;
struct TYPE_12__ {int rung_list_size; int avail_index; TYPE_1__* rem_rung_list; int * prefix_rung; } ;
typedef TYPE_2__ ElsUnsignedRung ;
typedef TYPE_1__ ElsRungNode ;
typedef TYPE_4__ ElsDecCtx ;


 scalar_t__ AVERROR (int ) ;
 scalar_t__ AVERROR_INVALIDDATA ;
 int ELS_EXPGOLOMB_LEN ;
 int ENOMEM ;
 int RUNG_SPACE ;
 TYPE_1__* av_realloc (int *,int) ;
 scalar_t__ av_reallocp (TYPE_1__**,int) ;
 int ff_els_decode_bit (TYPE_4__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;

unsigned ff_els_decode_unsigned(ElsDecCtx *ctx, ElsUnsignedRung *ur)
{
    int i, n, r, bit;
    ElsRungNode *rung_node;

    if (ctx->err)
        return 0;


    for (n = 0; n < ELS_EXPGOLOMB_LEN + 1; n++)
        if (ff_els_decode_bit(ctx, &ur->prefix_rung[n]))
            break;


    if (ctx->err || n >= ELS_EXPGOLOMB_LEN) {
        ctx->err = AVERROR_INVALIDDATA;
        return 0;
    }


    if (!n)
        return 0;


    if (!ur->rem_rung_list) {
        ur->rem_rung_list = av_realloc(((void*)0), RUNG_SPACE);
        if (!ur->rem_rung_list) {
            ctx->err = AVERROR(ENOMEM);
            return 0;
        }
        memset(ur->rem_rung_list, 0, RUNG_SPACE);
        ur->rung_list_size = RUNG_SPACE;
        ur->avail_index = ELS_EXPGOLOMB_LEN;
    }


    for (i = 0, r = 0, bit = 0; i < n; i++) {
        if (!i)
            rung_node = &ur->rem_rung_list[n];
        else {
            if (!rung_node->next_index) {
                if (ur->rung_list_size <= (ur->avail_index + 2) * sizeof(ElsRungNode)) {

                    ptrdiff_t pos = rung_node - ur->rem_rung_list;
                    ctx->err = av_reallocp(&ur->rem_rung_list,
                                                   ur->rung_list_size +
                                                   RUNG_SPACE);
                    if (ctx->err < 0) {
                        return 0;
                    }
                    memset((uint8_t *) ur->rem_rung_list + ur->rung_list_size, 0,
                           RUNG_SPACE);
                    ur->rung_list_size += RUNG_SPACE;

                    rung_node = &ur->rem_rung_list[pos];
                }
                rung_node->next_index = ur->avail_index;
                ur->avail_index += 2;
            }
            rung_node = &ur->rem_rung_list[rung_node->next_index + bit];
        }

        bit = ff_els_decode_bit(ctx, &rung_node->rung);
        if (ctx->err)
            return bit;

        r = (r << 1) + bit;
    }

    return (1 << n) - 1 + r;
}
