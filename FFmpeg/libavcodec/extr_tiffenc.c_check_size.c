
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ buf_size; scalar_t__* buf; scalar_t__ buf_start; int avctx; } ;
typedef TYPE_1__ TiffEncoderContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static inline int check_size(TiffEncoderContext *s, uint64_t need)
{
    if (s->buf_size < *s->buf - s->buf_start + need) {
        *s->buf = s->buf_start + s->buf_size + 1;
        av_log(s->avctx, AV_LOG_ERROR, "Buffer is too small\n");
        return 1;
    }
    return 0;
}
