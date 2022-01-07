
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {TYPE_5__* fc; } ;
struct TYPE_6__ {int codec_id; } ;
typedef TYPE_2__ MOVContext ;
typedef int MOVAtom ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;



 int AV_CODEC_ID_PCM_F32LE ;

 int AV_CODEC_ID_PCM_F64LE ;

 int AV_CODEC_ID_PCM_S24LE ;

 int AV_CODEC_ID_PCM_S32LE ;
 int AV_LOG_TRACE ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int avio_rb16 (int *) ;

__attribute__((used)) static int mov_read_enda(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int little_endian;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    little_endian = avio_rb16(pb) & 0xFF;
    av_log(c->fc, AV_LOG_TRACE, "enda %d\n", little_endian);
    if (little_endian == 1) {
        switch (st->codecpar->codec_id) {
        case 129:
            st->codecpar->codec_id = AV_CODEC_ID_PCM_S24LE;
            break;
        case 128:
            st->codecpar->codec_id = AV_CODEC_ID_PCM_S32LE;
            break;
        case 131:
            st->codecpar->codec_id = AV_CODEC_ID_PCM_F32LE;
            break;
        case 130:
            st->codecpar->codec_id = AV_CODEC_ID_PCM_F64LE;
            break;
        default:
            break;
        }
    }
    return 0;
}
