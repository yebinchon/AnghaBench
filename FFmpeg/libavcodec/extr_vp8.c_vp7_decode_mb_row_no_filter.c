
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int decode_mb_row_no_filter (int *,void*,int,int,int) ;

__attribute__((used)) static int vp7_decode_mb_row_no_filter(AVCodecContext *avctx, void *tdata,
                                        int jobnr, int threadnr)
{
    return decode_mb_row_no_filter(avctx, tdata, jobnr, threadnr, 1);
}
