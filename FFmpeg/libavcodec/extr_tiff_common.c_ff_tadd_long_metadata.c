
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int GetByteContext ;
typedef int AVDictionary ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int ENOMEM ;
 int INT_MAX ;
 int auto_sep (int,char const*,int,int) ;
 int av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int,int ) ;
 int av_bprintf (int *,char*,int ,int ) ;
 int av_dict_set (int **,char const*,char*,int ) ;
 int bytestream2_get_bytes_left (int *) ;
 int ff_tget_long (int *,int) ;

int ff_tadd_long_metadata(int count, const char *name, const char *sep,
                          GetByteContext *gb, int le, AVDictionary **metadata)
{
    AVBPrint bp;
    char *ap;
    int i;

    if (count >= INT_MAX / sizeof(int32_t) || count <= 0)
        return AVERROR_INVALIDDATA;
    if (bytestream2_get_bytes_left(gb) < count * sizeof(int32_t))
        return AVERROR_INVALIDDATA;

    av_bprint_init(&bp, 10 * count, AV_BPRINT_SIZE_UNLIMITED);

    for (i = 0; i < count; i++) {
        av_bprintf(&bp, "%s%7i", auto_sep(count, sep, i, 8), ff_tget_long(gb, le));
    }

    if ((i = av_bprint_finalize(&bp, &ap))) {
        return i;
    }
    if (!ap) {
        return AVERROR(ENOMEM);
    }

    av_dict_set(metadata, name, ap, AV_DICT_DONT_STRDUP_VAL);

    return 0;
}
