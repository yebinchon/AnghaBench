
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MatroskaTrack ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_RB32 (int *) ;
 int AV_WB32 (int *,int) ;
 int ENOMEM ;
 int MKBETAG (char,char,char,float) ;
 int * av_malloc (scalar_t__) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static int matroska_parse_prores(MatroskaTrack *track, uint8_t *src,
                                 uint8_t **pdst, int *size)
{
    uint8_t *dst = src;
    int dstlen = *size;

    if (AV_RB32(&src[4]) != MKBETAG('i', 'c', 'p', 'f')) {
        dstlen += 8;

        dst = av_malloc(dstlen + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!dst)
            return AVERROR(ENOMEM);

        AV_WB32(dst, dstlen);
        AV_WB32(dst + 4, MKBETAG('i', 'c', 'p', 'f'));
        memcpy(dst + 8, src, dstlen - 8);
        memset(dst + dstlen, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    }

    *pdst = dst;
    *size = dstlen;

    return 0;
}
