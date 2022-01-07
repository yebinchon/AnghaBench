
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {void* csty; } ;
struct TYPE_7__ {int ncomponents; int g; int avctx; } ;
typedef TYPE_1__ Jpeg2000DecoderContext ;
typedef TYPE_2__ Jpeg2000CodingStyle ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int HAD_COC ;
 int av_log (int ,int ,char*,...) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_byteu (int *) ;
 int get_cox (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int get_coc(Jpeg2000DecoderContext *s, Jpeg2000CodingStyle *c,
                   uint8_t *properties)
{
    int compno, ret;

    if (bytestream2_get_bytes_left(&s->g) < 2) {
        av_log(s->avctx, AV_LOG_ERROR, "Insufficient space for COC\n");
        return AVERROR_INVALIDDATA;
    }

    compno = bytestream2_get_byteu(&s->g);

    if (compno >= s->ncomponents) {
        av_log(s->avctx, AV_LOG_ERROR,
               "Invalid compno %d. There are %d components in the image.\n",
               compno, s->ncomponents);
        return AVERROR_INVALIDDATA;
    }

    c += compno;
    c->csty = bytestream2_get_byteu(&s->g);

    if ((ret = get_cox(s, c)) < 0)
        return ret;

    properties[compno] |= HAD_COC;
    return 0;
}
