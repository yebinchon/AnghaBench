
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int V4L2Buffer ;
struct TYPE_2__ {int * avctx; } ;
typedef int AVCodecContext ;


 TYPE_1__* buf_to_m2mctx (int *) ;

__attribute__((used)) static inline AVCodecContext *logger(V4L2Buffer *buf)
{
    return buf_to_m2mctx(buf)->avctx;
}
