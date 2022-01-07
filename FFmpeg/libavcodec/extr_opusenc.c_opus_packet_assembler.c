
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int size; scalar_t__ data; } ;
struct TYPE_8__ {int frames; } ;
struct TYPE_10__ {TYPE_2__* frame; int * rc; TYPE_1__ packet; } ;
struct TYPE_9__ {int framebits; } ;
typedef TYPE_3__ OpusEncContext ;
typedef TYPE_4__ AVPacket ;


 int ff_opus_rc_enc_end (int *,scalar_t__,int) ;
 int opus_gen_toc (TYPE_3__*,scalar_t__,int*,int*) ;
 scalar_t__ write_opuslacing (scalar_t__,int) ;

__attribute__((used)) static void opus_packet_assembler(OpusEncContext *s, AVPacket *avpkt)
{
    int offset, fsize_needed;


    opus_gen_toc(s, avpkt->data, &offset, &fsize_needed);


    if (fsize_needed) {
        for (int i = 0; i < s->packet.frames - 1; i++) {
            offset += write_opuslacing(avpkt->data + offset,
                                       s->frame[i].framebits >> 3);
        }
    }


    for (int i = 0; i < s->packet.frames; i++) {
        ff_opus_rc_enc_end(&s->rc[i], avpkt->data + offset,
                           s->frame[i].framebits >> 3);
        offset += s->frame[i].framebits >> 3;
    }

    avpkt->size = offset;
}
