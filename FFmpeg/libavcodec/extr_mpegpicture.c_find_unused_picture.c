
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_5__ {int * buf; } ;
typedef TYPE_2__ Picture ;
typedef int AVCodecContext ;


 int AV_LOG_FATAL ;
 int MAX_PICTURE_COUNT ;
 int abort () ;
 int av_log (int *,int ,char*) ;
 scalar_t__ pic_is_unused (TYPE_2__*) ;

__attribute__((used)) static int find_unused_picture(AVCodecContext *avctx, Picture *picture, int shared)
{
    int i;

    if (shared) {
        for (i = 0; i < MAX_PICTURE_COUNT; i++) {
            if (!picture[i].f->buf[0])
                return i;
        }
    } else {
        for (i = 0; i < MAX_PICTURE_COUNT; i++) {
            if (pic_is_unused(&picture[i]))
                return i;
        }
    }

    av_log(avctx, AV_LOG_FATAL,
           "Internal error, picture buffer overflow\n");
    abort();
    return -1;
}
