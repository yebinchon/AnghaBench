
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__* data; int * linesize; } ;
typedef int CDXLVideoContext ;
typedef TYPE_1__ AVFrame ;


 int AVPALETTE_SIZE ;
 int import_format (int *,int ,scalar_t__) ;
 int import_palette (int *,int *) ;
 int memset (scalar_t__,int ,int ) ;

__attribute__((used)) static void cdxl_decode_rgb(CDXLVideoContext *c, AVFrame *frame)
{
    uint32_t *new_palette = (uint32_t *)frame->data[1];

    memset(frame->data[1], 0, AVPALETTE_SIZE);
    import_palette(c, new_palette);
    import_format(c, frame->linesize[0], frame->data[0]);
}
