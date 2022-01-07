
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {void** dstptr; void** dstbuf; int avctx; } ;
typedef TYPE_1__ YopDecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int** motion_vector ;

__attribute__((used)) static int yop_copy_previous_block(YopDecContext *s, int linesize, int copy_tag)
{
    uint8_t *bufptr;


    bufptr = s->dstptr + motion_vector[copy_tag][0] +
             linesize * motion_vector[copy_tag][1];
    if (bufptr < s->dstbuf) {
        av_log(s->avctx, AV_LOG_ERROR, "File probably corrupt\n");
        return AVERROR_INVALIDDATA;
    }

    s->dstptr[0] = bufptr[0];
    s->dstptr[1] = bufptr[1];
    s->dstptr[linesize] = bufptr[linesize];
    s->dstptr[linesize + 1] = bufptr[linesize + 1];

    return 0;
}
