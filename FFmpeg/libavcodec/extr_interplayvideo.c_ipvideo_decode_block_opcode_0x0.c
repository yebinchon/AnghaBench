
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_frame; } ;
typedef TYPE_1__ IpvideoContext ;
typedef int AVFrame ;


 int copy_from (TYPE_1__*,int ,int *,int ,int ) ;

__attribute__((used)) static int ipvideo_decode_block_opcode_0x0(IpvideoContext *s, AVFrame *frame)
{
    return copy_from(s, s->last_frame, frame, 0, 0);
}
