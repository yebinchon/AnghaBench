
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const int64_t ;
typedef int AVCodecContext ;
typedef int AVBPrint ;


 scalar_t__ ASS_DEFAULT_PLAYRESX ;
 scalar_t__ ASS_DEFAULT_PLAYRESY ;
 int av_bprintf (int *,char*,int const,int const) ;
 int ff_htmlmarkup_to_ass (int *,int *,char const*) ;

__attribute__((used)) static int srt_to_ass(AVCodecContext *avctx, AVBPrint *dst,
                       const char *in, int x1, int y1, int x2, int y2)
{
    if (x1 >= 0 && y1 >= 0) {



        if (x2 >= 0 && y2 >= 0 && (x2 != x1 || y2 != y1) && x2 >= x1 && y2 >= y1) {

            const int cx = x1 + (x2 - x1)/2;
            const int cy = y1 + (y2 - y1)/2;
            const int scaled_x = cx * (int64_t)ASS_DEFAULT_PLAYRESX / 720;
            const int scaled_y = cy * (int64_t)ASS_DEFAULT_PLAYRESY / 480;
            av_bprintf(dst, "{\\an5}{\\pos(%d,%d)}", scaled_x, scaled_y);
        } else {

            const int scaled_x = x1 * (int64_t)ASS_DEFAULT_PLAYRESX / 720;
            const int scaled_y = y1 * (int64_t)ASS_DEFAULT_PLAYRESY / 480;
            av_bprintf(dst, "{\\an1}{\\pos(%d,%d)}", scaled_x, scaled_y);
        }
    }

    return ff_htmlmarkup_to_ass(avctx, dst, in);
}
