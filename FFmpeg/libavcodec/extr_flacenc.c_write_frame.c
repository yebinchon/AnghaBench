
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int size; int data; } ;
struct TYPE_8__ {int pb; } ;
typedef TYPE_1__ FlacEncodeContext ;
typedef TYPE_2__ AVPacket ;


 int init_put_bits (int *,int ,int ) ;
 int put_bits_count (int *) ;
 int write_frame_footer (TYPE_1__*) ;
 int write_frame_header (TYPE_1__*) ;
 int write_subframes (TYPE_1__*) ;

__attribute__((used)) static int write_frame(FlacEncodeContext *s, AVPacket *avpkt)
{
    init_put_bits(&s->pb, avpkt->data, avpkt->size);
    write_frame_header(s);
    write_subframes(s);
    write_frame_footer(s);
    return put_bits_count(&s->pb) >> 3;
}
