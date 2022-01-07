
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {size_t current; size_t length; int* bits; int* lengths; int maxlength; int * values; } ;
typedef TYPE_1__ HuffContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int SMKTREE_BITS ;
 int SMKTREE_DECODE_MAX_RECURSION ;
 int av_log (int *,int ,char*) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;

__attribute__((used)) static int smacker_decode_tree(GetBitContext *gb, HuffContext *hc, uint32_t prefix, int length)
{
    if (length > SMKTREE_DECODE_MAX_RECURSION || length > 3 * SMKTREE_BITS) {
        av_log(((void*)0), AV_LOG_ERROR, "Maximum tree recursion level exceeded.\n");
        return AVERROR_INVALIDDATA;
    }

    if(!get_bits1(gb)){
        if(hc->current >= hc->length){
            av_log(((void*)0), AV_LOG_ERROR, "Tree size exceeded!\n");
            return AVERROR_INVALIDDATA;
        }
        if(length){
            hc->bits[hc->current] = prefix;
            hc->lengths[hc->current] = length;
        } else {
            hc->bits[hc->current] = 0;
            hc->lengths[hc->current] = 0;
        }
        hc->values[hc->current] = get_bits(gb, 8);
        hc->current++;
        if(hc->maxlength < length)
            hc->maxlength = length;
        return 0;
    } else {
        int r;
        length++;
        r = smacker_decode_tree(gb, hc, prefix, length);
        if(r)
            return r;
        return smacker_decode_tree(gb, hc, prefix | (1 << (length - 1)), length);
    }
}
