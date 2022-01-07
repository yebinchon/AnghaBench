
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0x6(IpvideoContext *s, AVFrame *frame)
{

    av_log(s->avctx, AV_LOG_ERROR, "Help! Mystery opcode 0x6 seen\n");


    return 0;
}
