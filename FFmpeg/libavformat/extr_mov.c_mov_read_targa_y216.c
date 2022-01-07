
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int extradata_size; int * extradata; void* width; void* height; } ;
struct TYPE_9__ {TYPE_2__* fc; } ;
struct TYPE_8__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_7__ {TYPE_4__* codecpar; } ;
typedef TYPE_3__ MOVContext ;
typedef int MOVAtom ;
typedef int AVIOContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AV_CODEC_ID_TARGA_Y216 ;
 void* AV_RB16 (int *) ;
 int mov_read_extradata (TYPE_3__*,int *,int ,int ) ;

__attribute__((used)) static int mov_read_targa_y216(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int ret = mov_read_extradata(c, pb, atom, AV_CODEC_ID_TARGA_Y216);

    if (!ret && c->fc->nb_streams >= 1) {
        AVCodecParameters *par = c->fc->streams[c->fc->nb_streams-1]->codecpar;
        if (par->extradata_size >= 40) {
            par->height = AV_RB16(&par->extradata[36]);
            par->width = AV_RB16(&par->extradata[38]);
        }
    }
    return ret;
}
