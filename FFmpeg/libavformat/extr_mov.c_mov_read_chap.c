
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int eof_reached; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {unsigned int nb_chapter_tracks; int * chapter_tracks; } ;
typedef TYPE_1__ MOVContext ;
typedef TYPE_2__ MOVAtom ;
typedef TYPE_3__ AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (int *) ;
 void* av_malloc_array (unsigned int,int) ;
 int avio_rb32 (TYPE_3__*) ;

__attribute__((used)) static int mov_read_chap(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    unsigned i, num;
    void *new_tracks;

    num = atom.size / 4;
    if (!(new_tracks = av_malloc_array(num, sizeof(int))))
        return AVERROR(ENOMEM);

    av_free(c->chapter_tracks);
    c->chapter_tracks = new_tracks;
    c->nb_chapter_tracks = num;

    for (i = 0; i < num && !pb->eof_reached; i++)
        c->chapter_tracks[i] = avio_rb32(pb);

    return 0;
}
