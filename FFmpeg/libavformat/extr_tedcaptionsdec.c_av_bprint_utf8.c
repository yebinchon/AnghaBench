
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBPrint ;


 int av_bprint_chars (int *,unsigned int,int) ;
 int av_log2 (unsigned int) ;

__attribute__((used)) static void av_bprint_utf8(AVBPrint *bp, unsigned c)
{
    int bytes, i;

    if (c <= 0x7F) {
        av_bprint_chars(bp, c, 1);
        return;
    }
    bytes = (av_log2(c) - 2) / 5;
    av_bprint_chars(bp, (c >> (bytes * 6)) | ((0xFF80 >> bytes) & 0xFF), 1);
    for (i = bytes - 1; i >= 0; i--)
        av_bprint_chars(bp, ((c >> (i * 6)) & 0x3F) | 0x80, 1);
}
