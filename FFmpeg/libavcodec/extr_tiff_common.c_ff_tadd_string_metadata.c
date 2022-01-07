
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int ENOMEM ;
 int av_dict_set (int **,char const*,char*,int ) ;
 char* av_malloc (int) ;
 int bytestream2_get_bufferu (int *,char*,int) ;
 int bytestream2_get_bytes_left (int *) ;

int ff_tadd_string_metadata(int count, const char *name,
                            GetByteContext *gb, int le, AVDictionary **metadata)
{
    char *value;

    if (bytestream2_get_bytes_left(gb) < count || count < 0)
        return AVERROR_INVALIDDATA;

    value = av_malloc(count + 1);
    if (!value)
        return AVERROR(ENOMEM);

    bytestream2_get_bufferu(gb, value, count);
    value[count] = 0;

    av_dict_set(metadata, name, value, AV_DICT_DONT_STRDUP_VAL);
    return 0;
}
