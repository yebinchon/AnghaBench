
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int ENOMEM ;
 int ERR_CODE (int) ;
 int HEX_DIGIT_TEST (int) ;
 unsigned int HEX_DIGIT_VAL (int) ;
 int av_bprint_chars (int *,int,int) ;
 int av_bprint_finalize (int *,int *) ;
 int av_bprint_init (int *,int ,int ) ;
 int av_bprint_is_complete (int *) ;
 int av_bprint_utf8 (int *,unsigned int) ;
 int expect_byte (int *,int*,char) ;
 int next_byte (int *,int*) ;

__attribute__((used)) static int parse_string(AVIOContext *pb, int *cur_byte, AVBPrint *bp, int full)
{
    int ret;

    av_bprint_init(bp, 0, full ? AV_BPRINT_SIZE_UNLIMITED : AV_BPRINT_SIZE_AUTOMATIC);
    ret = expect_byte(pb, cur_byte, '"');
    if (ret < 0)
        goto fail;
    while (*cur_byte > 0 && *cur_byte != '"') {
        if (*cur_byte == '\\') {
            next_byte(pb, cur_byte);
            if (*cur_byte < 0) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            if ((*cur_byte | 32) == 'u') {
                unsigned chr = 0, i;
                for (i = 0; i < 4; i++) {
                    next_byte(pb, cur_byte);
                    if (!HEX_DIGIT_TEST(*cur_byte)) {
                        ret = ERR_CODE(*cur_byte);
                        goto fail;
                    }
                    chr = chr * 16 + HEX_DIGIT_VAL(*cur_byte);
                }
                av_bprint_utf8(bp, chr);
            } else {
                av_bprint_chars(bp, *cur_byte, 1);
            }
        } else {
            av_bprint_chars(bp, *cur_byte, 1);
        }
        next_byte(pb, cur_byte);
    }
    ret = expect_byte(pb, cur_byte, '"');
    if (ret < 0)
        goto fail;
    if (full && !av_bprint_is_complete(bp)) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    return 0;

fail:
    av_bprint_finalize(bp, ((void*)0));
    return ret;
}
