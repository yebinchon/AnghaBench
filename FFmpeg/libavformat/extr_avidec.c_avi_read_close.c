
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int pb; } ;
struct TYPE_10__ {int nb_streams; TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_9__ {int dv_demux; } ;
struct TYPE_8__ {int sub_pkt; int sub_buffer; TYPE_6__* sub_ctx; } ;
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVIStream ;
typedef TYPE_3__ AVIContext ;
typedef TYPE_4__ AVFormatContext ;


 int av_freep (int *) ;
 int av_packet_unref (int *) ;
 int avformat_close_input (TYPE_6__**) ;

__attribute__((used)) static int avi_read_close(AVFormatContext *s)
{
    int i;
    AVIContext *avi = s->priv_data;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        AVIStream *ast = st->priv_data;
        if (ast) {
            if (ast->sub_ctx) {
                av_freep(&ast->sub_ctx->pb);
                avformat_close_input(&ast->sub_ctx);
            }
            av_freep(&ast->sub_buffer);
            av_packet_unref(&ast->sub_pkt);
        }
    }

    av_freep(&avi->dv_demux);

    return 0;
}
