
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {unsigned int len; } ;
struct TYPE_7__ {int const* buffer; } ;
struct TYPE_8__ {TYPE_1__ gb; } ;
typedef TYPE_2__ PNGDecContext ;
typedef int AVDictionary ;
typedef TYPE_3__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_DICT_DONT_STRDUP_KEY ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int ENOMEM ;
 int av_bprint_finalize (TYPE_3__*,char**) ;
 int av_dict_set (int **,int const*,int const*,int) ;
 int av_free (int const*) ;
 int decode_zbuf (TYPE_3__*,int const*,int const*) ;
 int const* iso88591_to_utf8 (int const*,unsigned int) ;
 int const* memchr (int const*,int ,int) ;

__attribute__((used)) static int decode_text_chunk(PNGDecContext *s, uint32_t length, int compressed,
                             AVDictionary **dict)
{
    int ret, method;
    const uint8_t *data = s->gb.buffer;
    const uint8_t *data_end = data + length;
    const uint8_t *keyword = data;
    const uint8_t *keyword_end = memchr(keyword, 0, data_end - keyword);
    uint8_t *kw_utf8 = ((void*)0), *text, *txt_utf8 = ((void*)0);
    unsigned text_len;
    AVBPrint bp;

    if (!keyword_end)
        return AVERROR_INVALIDDATA;
    data = keyword_end + 1;

    if (compressed) {
        if (data == data_end)
            return AVERROR_INVALIDDATA;
        method = *(data++);
        if (method)
            return AVERROR_INVALIDDATA;
        if ((ret = decode_zbuf(&bp, data, data_end)) < 0)
            return ret;
        text_len = bp.len;
        ret = av_bprint_finalize(&bp, (char **)&text);
        if (ret < 0)
            return ret;
    } else {
        text = (uint8_t *)data;
        text_len = data_end - text;
    }

    kw_utf8 = iso88591_to_utf8(keyword, keyword_end - keyword);
    txt_utf8 = iso88591_to_utf8(text, text_len);
    if (text != data)
        av_free(text);
    if (!(kw_utf8 && txt_utf8)) {
        av_free(kw_utf8);
        av_free(txt_utf8);
        return AVERROR(ENOMEM);
    }

    av_dict_set(dict, kw_utf8, txt_utf8,
                AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
