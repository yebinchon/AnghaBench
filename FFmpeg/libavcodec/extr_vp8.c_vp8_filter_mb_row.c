
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int filter_mb_row (int *,void*,int,int,int ) ;

__attribute__((used)) static void vp8_filter_mb_row(AVCodecContext *avctx, void *tdata,
                              int jobnr, int threadnr)
{
    filter_mb_row(avctx, tdata, jobnr, threadnr, 0);
}
