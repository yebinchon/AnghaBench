
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_11__ {int codec_id; scalar_t__ extradata; scalar_t__ extradata_size; } ;
struct TYPE_10__ {TYPE_4__* codecpar; } ;
struct TYPE_9__ {TYPE_1__* fc; } ;
struct TYPE_8__ {int nb_streams; TYPE_3__** streams; } ;
typedef TYPE_2__ MOVContext ;
typedef int MOVAtom ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 int mov_read_atom_into_extradata (TYPE_2__*,int *,int ,TYPE_4__*,scalar_t__) ;
 int mov_realloc_extradata (TYPE_4__*,int ) ;

__attribute__((used)) static int mov_read_extradata(MOVContext *c, AVIOContext *pb, MOVAtom atom,
                              enum AVCodecID codec_id)
{
    AVStream *st;
    uint64_t original_size;
    int err;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams-1];

    if (st->codecpar->codec_id != codec_id)
        return 0;

    original_size = st->codecpar->extradata_size;
    err = mov_realloc_extradata(st->codecpar, atom);
    if (err)
        return err;

    err = mov_read_atom_into_extradata(c, pb, atom, st->codecpar, st->codecpar->extradata + original_size);
    if (err < 0)
        return err;
    return 0;
}
