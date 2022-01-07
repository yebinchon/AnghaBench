
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;
typedef int AVDictionary ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_bytes_left (int *) ;
 int exif_decode_tag (void*,int *,int,int,int **) ;
 int ff_tget_long (int *,int) ;
 int ff_tget_short (int *,int) ;

int ff_exif_decode_ifd(void *logctx, GetByteContext *gbytes,
                       int le, int depth, AVDictionary **metadata)
{
    int i, ret;
    int entries;

    entries = ff_tget_short(gbytes, le);

    if (bytestream2_get_bytes_left(gbytes) < entries * 12) {
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < entries; i++) {
        if ((ret = exif_decode_tag(logctx, gbytes, le, depth, metadata)) < 0) {
            return ret;
        }
    }


    return ff_tget_long(gbytes, le);
}
