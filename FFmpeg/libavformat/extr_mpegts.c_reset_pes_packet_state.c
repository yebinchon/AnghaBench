
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; scalar_t__ flags; scalar_t__ data_index; void* dts; void* pts; } ;
typedef TYPE_1__ PESContext ;


 void* AV_NOPTS_VALUE ;
 int av_buffer_unref (int *) ;

__attribute__((used)) static void reset_pes_packet_state(PESContext *pes)
{
    pes->pts = AV_NOPTS_VALUE;
    pes->dts = AV_NOPTS_VALUE;
    pes->data_index = 0;
    pes->flags = 0;
    av_buffer_unref(&pes->buffer);
}
