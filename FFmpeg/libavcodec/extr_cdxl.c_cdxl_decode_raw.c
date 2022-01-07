
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int * linesize; } ;
typedef int CDXLVideoContext ;
typedef TYPE_1__ AVFrame ;


 int import_format (int *,int ,int ) ;

__attribute__((used)) static void cdxl_decode_raw(CDXLVideoContext *c, AVFrame *frame)
{
    import_format(c, frame->linesize[0], frame->data[0]);
}
