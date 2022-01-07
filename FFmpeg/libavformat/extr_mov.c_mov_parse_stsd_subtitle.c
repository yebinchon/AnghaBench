
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {int height; int width; } ;
struct TYPE_8__ {scalar_t__ codec_tag; int height; int width; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef int MOVContext ;
typedef TYPE_3__ MOVAtom ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;


 scalar_t__ AV_RL32 (char*) ;
 int mov_read_glbl (int *,int *,TYPE_3__) ;

__attribute__((used)) static void mov_parse_stsd_subtitle(MOVContext *c, AVIOContext *pb,
                                    AVStream *st, MOVStreamContext *sc,
                                    int64_t size)
{


    MOVAtom fake_atom = { .size = size };

    if (st->codecpar->codec_tag != AV_RL32("mp4s"))
        mov_read_glbl(c, pb, fake_atom);
    st->codecpar->width = sc->width;
    st->codecpar->height = sc->height;
}
