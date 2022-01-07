
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_blocks; int (* output_frame_header ) (TYPE_1__*) ;int pb; } ;
typedef TYPE_1__ AC3EncodeContext ;


 int AC3_MAX_CODED_FRAME_SIZE ;
 int init_put_bits (int *,unsigned char*,int ) ;
 int output_audio_block (TYPE_1__*,int) ;
 int output_frame_end (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void ff_ac3_output_frame(AC3EncodeContext *s, unsigned char *frame)
{
    int blk;

    init_put_bits(&s->pb, frame, AC3_MAX_CODED_FRAME_SIZE);

    s->output_frame_header(s);

    for (blk = 0; blk < s->num_blocks; blk++)
        output_audio_block(s, blk);

    output_frame_end(s);
}
