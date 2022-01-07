
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ codec_tag; scalar_t__ codec_id; int width; } ;
struct TYPE_15__ {int size; } ;
struct TYPE_14__ {TYPE_3__* fc; } ;
struct TYPE_13__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_12__ {TYPE_1__ display_aspect_ratio; TYPE_6__* codecpar; } ;
typedef TYPE_4__ MOVContext ;
typedef TYPE_5__ MOVAtom ;
typedef int AVIOContext ;
typedef TYPE_6__ AVCodecParameters ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int INT_MAX ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int avio_rb16 (int *) ;
 int avio_rb32 (int *) ;
 int avio_skip (int *,int) ;
 int mov_read_avid (TYPE_4__*,int *,TYPE_5__) ;

__attribute__((used)) static int mov_read_ares(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    if (c->fc->nb_streams >= 1) {
        AVCodecParameters *par = c->fc->streams[c->fc->nb_streams-1]->codecpar;
        if (par->codec_tag == MKTAG('A', 'V', 'i', 'n') &&
            par->codec_id == AV_CODEC_ID_H264 &&
            atom.size > 11) {
            int cid;
            avio_skip(pb, 10);
            cid = avio_rb16(pb);

            if (cid == 0xd4d || cid == 0xd4e)
                par->width = 1440;
            return 0;
        } else if ((par->codec_tag == MKTAG('A', 'V', 'd', '1') ||
                    par->codec_tag == MKTAG('A', 'V', 'j', '2') ||
                    par->codec_tag == MKTAG('A', 'V', 'd', 'n')) &&
                   atom.size >= 24) {
            int num, den;
            avio_skip(pb, 12);
            num = avio_rb32(pb);
            den = avio_rb32(pb);
            if (num <= 0 || den <= 0)
                return 0;
            switch (avio_rb32(pb)) {
            case 2:
                if (den >= INT_MAX / 2)
                    return 0;
                den *= 2;
            case 1:
                c->fc->streams[c->fc->nb_streams-1]->display_aspect_ratio.num = num;
                c->fc->streams[c->fc->nb_streams-1]->display_aspect_ratio.den = den;
            default:
                return 0;
            }
        }
    }

    return mov_read_avid(c, pb, atom);
}
