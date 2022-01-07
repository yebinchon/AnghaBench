
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_3__ {scalar_t__ pts; int height; int width; int * linesize; int ** data; } ;
typedef int AVRational ;
typedef TYPE_1__ AVFrame ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 int av_rescale_q (scalar_t__,int ,int ) ;
 int fflush (int ) ;
 scalar_t__ last_pts ;
 int putchar (char) ;
 int puts (char*) ;
 int stdout ;
 int usleep (int) ;

__attribute__((used)) static void display_frame(const AVFrame *frame, AVRational time_base)
{
    int x, y;
    uint8_t *p0, *p;
    int64_t delay;

    if (frame->pts != AV_NOPTS_VALUE) {
        if (last_pts != AV_NOPTS_VALUE) {


            delay = av_rescale_q(frame->pts - last_pts,
                                 time_base, AV_TIME_BASE_Q);
            if (delay > 0 && delay < 1000000)
                usleep(delay);
        }
        last_pts = frame->pts;
    }


    p0 = frame->data[0];
    puts("\033c");
    for (y = 0; y < frame->height; y++) {
        p = p0;
        for (x = 0; x < frame->width; x++)
            putchar(" .-+#"[*(p++) / 52]);
        putchar('\n');
        p0 += frame->linesize[0];
    }
    fflush(stdout);
}
